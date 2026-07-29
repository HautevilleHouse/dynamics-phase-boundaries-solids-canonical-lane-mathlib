import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsCanonicalLaneLean

structure SharpInterfaceAsymptoticsPackage where
  thinInterfaceLimit : Prop
  GibbsThomsonCondition : Prop
  curvatureUndercooling : Prop
  anisotropyEffect : Prop

structure SharpInterfaceAsymptoticsEvidence (S : SharpInterfaceAsymptoticsPackage) where
  thinInterfaceLimitClosed : S.thinInterfaceLimit
  gibbsThomsonConditionClosed : S.GibbsThomsonCondition
  curvatureUndercoolingClosed : S.curvatureUndercooling
  anisotropyEffectClosed : S.anisotropyEffect

def SharpInterfaceAsymptoticsClosed (S : SharpInterfaceAsymptoticsPackage) : Prop :=
  S.thinInterfaceLimit ∧ S.GibbsThomsonCondition ∧ S.curvatureUndercooling ∧ S.anisotropyEffect

theorem sharp_interface_asymptotics_closed_from_evidence (S : SharpInterfaceAsymptoticsPackage)
    (E : SharpInterfaceAsymptoticsEvidence S) : SharpInterfaceAsymptoticsClosed S := by
  exact And.intro E.thinInterfaceLimitClosed (And.intro E.gibbsThomsonConditionClosed
    (And.intro E.curvatureUndercoolingClosed E.anisotropyEffectClosed))

end DynamicsPhaseBoundariesSolidsCanonicalLaneLean
end HautevilleHouse