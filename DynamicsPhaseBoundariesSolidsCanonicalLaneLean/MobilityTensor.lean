import DynamicsPhaseBoundariesSolidsCanonicalLaneLean.RiemannianCurvature

/-!
# Mobility Tensor Package
This module defines the anisotropic mobility tensor for solid-solid phase boundaries, including crystallographic orientation dependence.
-/

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsCanonicalLaneLean

structure MobilityTensorPackage {G : RiemannianCurvaturePackage} where
  tensorField : G.manifold → (ℝ ⊗ ℝ)
  positiveDefinite : Prop
  orientationDependence : Prop
  temperatureDependence : Prop

structure MobilityTensorEvidence {G : RiemannianCurvaturePackage} (M : MobilityTensorPackage G) where
  positiveDefiniteClosed : M.positiveDefinite
  orientationDependenceClosed : M.orientationDependence
  temperatureDependenceClosed : M.temperatureDependence

def MobilityTensorClosed {G : RiemannianCurvaturePackage} (M : MobilityTensorPackage G) : Prop :=
  M.positiveDefinite ∧ M.orientationDependence ∧ M.temperatureDependence

theorem mobility_tensor_closed_from_evidence {G : RiemannianCurvaturePackage} (M : MobilityTensorPackage G) (E : MobilityTensorEvidence M) : MobilityTensorClosed M := by
  exact And.intro E.positiveDefiniteClosed (And.intro E.orientationDependenceClosed E.temperatureDependenceClosed)

end DynamicsPhaseBoundariesSolidsCanonicalLaneLean
end HautevilleHouse