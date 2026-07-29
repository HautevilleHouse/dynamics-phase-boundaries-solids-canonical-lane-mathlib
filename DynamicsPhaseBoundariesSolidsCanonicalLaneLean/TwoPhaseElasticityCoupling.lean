import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsCanonicalLaneLean

structure TwoPhaseElasticityCouplingPackage where
  elasticStrainEnergy : Prop
  stressEquilibrium : Prop
  eigenstrainField : Prop
  coherencyCondition : Prop

structure TwoPhaseElasticityCouplingEvidence (T : TwoPhaseElasticityCouplingPackage) where
  elasticStrainEnergyClosed : T.elasticStrainEnergy
  stressEquilibriumClosed : T.stressEquilibrium
  eigenstrainFieldClosed : T.eigenstrainField
  coherencyConditionClosed : T.coherencyCondition

def TwoPhaseElasticityCouplingClosed (T : TwoPhaseElasticityCouplingPackage) : Prop :=
  T.elasticStrainEnergy ∧ T.stressEquilibrium ∧ T.eigenstrainField ∧ T.coherencyCondition

theorem two_phase_elasticity_coupling_closed_from_evidence (T : TwoPhaseElasticityCouplingPackage)
    (E : TwoPhaseElasticityCouplingEvidence T) : TwoPhaseElasticityCouplingClosed T := by
  exact And.intro E.elasticStrainEnergyClosed (And.intro E.stressEquilibriumClosed
    (And.intro E.eigenstrainFieldClosed E.coherencyConditionClosed))

end DynamicsPhaseBoundariesSolidsCanonicalLaneLean
end HautevilleHouse