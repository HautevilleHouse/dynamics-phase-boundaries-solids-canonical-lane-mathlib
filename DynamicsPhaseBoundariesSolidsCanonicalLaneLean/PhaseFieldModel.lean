import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsCanonicalLaneLean

structure PhaseFieldModelPackage where
  orderParameter : Type u
  freeEnergy : Type v
  interfaceWidth : Prop
  kineticsEquation : Prop
  boundaryConditions : Prop

structure PhaseFieldModelEvidence (P : PhaseFieldModelPackage) where
  interfaceWidthClosed : P.interfaceWidth
  kineticsEquationClosed : P.kineticsEquation
  boundaryConditionsClosed : P.boundaryConditions

def PhaseFieldModelClosed (P : PhaseFieldModelPackage) : Prop :=
  P.interfaceWidth ∧ P.kineticsEquation ∧ P.boundaryConditions

theorem phase_field_model_closed_from_evidence (P : PhaseFieldModelPackage)
    (E : PhaseFieldModelEvidence P) : PhaseFieldModelClosed P := by
  exact And.intro E.interfaceWidthClosed
    (And.intro E.kineticsEquationClosed E.boundaryConditionsClosed)

end DynamicsPhaseBoundariesSolidsCanonicalLaneLean
end HautevilleHouse