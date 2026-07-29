import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicsPhaseBoundariesSolidsCanonicalLaneLean.PhaseFieldModel

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsCanonicalLaneLean

structure AllenCahnPackage (P : PhaseFieldModel) where
  relaxationRate : Type u
  drivingForce : Type v
  evolutionEquation : Prop
  relaxationRateTerm : relaxationRate
  drivingForceTerm : drivingForce
  evolutionEquationTerm : evolutionEquation

structure AllenCahnEvidence {P : PhaseFieldModel} (A : AllenCahnPackage P) where
  evolutionEquationClosed : A.evolutionEquation

def AllenCahnClosed {P : PhaseFieldModel} (A : AllenCahnPackage P) : Prop :=
  A.evolutionEquation

theorem allen_cahn_closed_from_evidence {P : PhaseFieldModel} (A : AllenCahnPackage P)
    (E : AllenCahnEvidence A) : AllenCahnClosed A := by
  exact E.evolutionEquationClosed

end DynamicsPhaseBoundariesSolidsCanonicalLaneLean
end HautevilleHouse