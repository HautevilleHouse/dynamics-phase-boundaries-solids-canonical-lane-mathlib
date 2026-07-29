import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsCanonicalLaneLean

structure ElasticDrivingForce where
  phaseBoundary : PhaseBoundary
  surfaceEnergyDensity : SurfaceEnergyDensity
  elasticMismatchParameter : ElasticMismatchParameter
  energyReleaseRate : EnergyReleaseRate
  drivingForceCompatibilityAxiom : drivingForceCompatibilityAxiom

def elasticDrivingForceClosed (E : ElasticDrivingForce) : Prop :=
  E.surfaceEnergyDensity.defined ∧
  E.elasticMismatchParameter.defined ∧
  E.energyReleaseRate.positive ∧
  E.drivingForceCompatibilityAxiom

theorem elastic_driving_force_closed_from_evidence (E : ElasticDrivingForce) (h : E.drivingForceCompatibilityAxiom) :
    elasticDrivingForceClosed E := by
  exact And.intro (by trivial) (And.intro (by trivial) (And.intro (by trivial) h))

end DynamicsPhaseBoundariesSolidsCanonicalLaneLean
end HautevilleHouse