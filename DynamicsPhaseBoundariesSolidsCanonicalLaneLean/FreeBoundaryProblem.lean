import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsCanonicalLaneLean

structure FreeBoundaryProblem where
  domain : Type u
  movingInterface : Type v
  jumpConditions : Prop
  stefanCondition : Prop
  kineticUndercooling : Prop

structure FreeBoundaryEvidence (F : FreeBoundaryProblem) where
  jumpConditionsClosed : F.jumpConditions
  stefanConditionClosed : F.stefanCondition
  kineticUndercoolingClosed : F.kineticUndercooling

end DynamicsPhaseBoundariesSolidsCanonicalLaneLean
end HautevilleHouse