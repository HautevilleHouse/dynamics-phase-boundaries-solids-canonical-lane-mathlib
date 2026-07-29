import canonicalLaneMathlib.AdmissibleClass
import DynamicsPhaseBoundariesSolidsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsCanonicalLaneLean

def ConstrainedPhaseBoundariesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_phase_boundaries_endgame (A : AdmissibleClass) :
    ConstrainedPhaseBoundariesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicsPhaseBoundariesSolidsCanonicalLaneLean
end HautevilleHouse