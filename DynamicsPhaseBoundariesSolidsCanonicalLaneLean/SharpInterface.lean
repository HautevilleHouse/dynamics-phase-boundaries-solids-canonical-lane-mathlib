import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsCanonicalLaneLean

structure SharpInterface where
  interfaceCurvature : InterfaceCurvature
  surfaceTension : SurfaceTension
  mobilityCoefficient : MobilityCoefficient
  capillaryUnderCooling : CapillaryUnderCooling

def SharpInterfaceClosed (S : SharpInterface) : Prop :=
  S.interfaceCurvature.bounded ∧
  S.surfaceTension.positive ∧
  S.mobilityCoefficient.positive ∧
  S.capillaryUnderCooling.finite

theorem sharp_interface_closed (S : SharpInterface) (h1 : S.interfaceCurvature.bounded) (h2 : S.surfaceTension.positive) (h3 : S.mobilityCoefficient.positive) (h4 : S.capillaryUnderCooling.finite) : SharpInterfaceClosed S := by
  exact And.intro h1 (And.intro h2 (And.intro h3 h4))

end DynamicsPhaseBoundariesSolidsCanonicalLaneLean
end HautevilleHouse