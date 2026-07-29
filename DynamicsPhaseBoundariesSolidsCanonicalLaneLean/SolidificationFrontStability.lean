import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsCanonicalLaneLean

structure SolidificationFrontStabilityPackage where
  planarInterface : Prop
  perturbationGrowth : Prop
  morphologicalStability : Prop
  MullinsSekerkaCondition : Prop

structure SolidificationFrontStabilityEvidence (S : SolidificationFrontStabilityPackage) where
  planarInterfaceClosed : S.planarInterface
  perturbationGrowthClosed : S.perturbationGrowth
  morphologicalStabilityClosed : S.morphologicalStability
  mullinsSekerkaConditionClosed : S.MullinsSekerkaCondition

def SolidificationFrontStabilityClosed (S : SolidificationFrontStabilityPackage) : Prop :=
  S.planarInterface ∧ S.perturbationGrowth ∧ S.morphologicalStability ∧ S.MullinsSekerkaCondition

theorem solidification_front_stability_closed_from_evidence (S : SolidificationFrontStabilityPackage)
    (E : SolidificationFrontStabilityEvidence S) : SolidificationFrontStabilityClosed S := by
  exact And.intro E.planarInterfaceClosed (And.intro E.perturbationGrowthClosed
    (And.intro E.morphologicalStabilityClosed E.mullinsSekerkaConditionClosed))

end DynamicsPhaseBoundariesSolidsCanonicalLaneLean
end HautevilleHouse