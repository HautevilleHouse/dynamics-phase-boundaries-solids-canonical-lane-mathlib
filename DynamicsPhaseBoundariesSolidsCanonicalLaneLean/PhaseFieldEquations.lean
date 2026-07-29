import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsCanonicalLaneLean

structure PhaseFieldEquationsPackage where
  orderParameter : Prop
  freeEnergyFunctional : Prop
  evolutionEquation : Prop
  couplingElasticity : Prop

structure PhaseFieldEquationsEvidence (P : PhaseFieldEquationsPackage) where
  orderParameterClosed : P.orderParameter
  freeEnergyFunctionalClosed : P.freeEnergyFunctional
  evolutionEquationClosed : P.evolutionEquation
  couplingElasticityClosed : P.couplingElasticity

def PhaseFieldEquationsClosed (P : PhaseFieldEquationsPackage) : Prop :=
  P.orderParameter ∧ P.freeEnergyFunctional ∧ P.evolutionEquation ∧ P.couplingElasticity

theorem phase_field_equations_closed_from_evidence (P : PhaseFieldEquationsPackage)
    (E : PhaseFieldEquationsEvidence P) : PhaseFieldEquationsClosed P := by
  exact And.intro E.orderParameterClosed (And.intro E.freeEnergyFunctionalClosed
    (And.intro E.evolutionEquationClosed E.couplingElasticityClosed))

end DynamicsPhaseBoundariesSolidsCanonicalLaneLean
end HautevilleHouse