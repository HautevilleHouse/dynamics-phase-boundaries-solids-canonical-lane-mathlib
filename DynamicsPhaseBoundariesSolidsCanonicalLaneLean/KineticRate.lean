import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsCanonicalLaneLean

structure KineticRate where
  migrationRate : MigrationRate
  nucleationRate : NucleationRate
  dissipationFactor : DissipationFactor
  reactionRateConstant : ReactionRateConstant

def kineticRateClosed (K : KineticRate) : Prop :=
  K.migrationRate.finite ∧
  K.nucleationRate.finite ∧
  K.dissipationFactor.positive ∧
  K.reactionRateConstant.defined

theorem kinetic_rate_closed_from_evidence (K : KineticRate) (h1 : K.migrationRate.finite) (h2 : K.nucleationRate.finite) (h3 : K.dissipationFactor.positive) (h4 : K.reactionRateConstant.defined) : kineticRateClosed K := by
  exact And.intro h1 (And.intro h2 (And.intro h3 h4))

end DynamicsPhaseBoundariesSolidsCanonicalLaneLean
end HautevilleHouse