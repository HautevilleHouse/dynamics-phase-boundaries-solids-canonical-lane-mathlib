import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  PhaseBoundaryWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicsPhaseBoundariesSolidsCanonicalLaneLean
end HautevilleHouse