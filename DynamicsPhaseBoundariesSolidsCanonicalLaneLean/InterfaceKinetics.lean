import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsCanonicalLaneLean

structure InterfaceKineticsPackage where
  mobility : Type u
  drivingForce : Type v
  normalVelocity : Prop
  soluteTrapping : Prop

structure InterfaceKineticsEvidence (K : InterfaceKineticsPackage) where
  normalVelocityClosed : K.normalVelocity
  soluteTrappingClosed : K.soluteTrapping

def InterfaceKineticsClosed (K : InterfaceKineticsPackage) : Prop :=
  K.normalVelocity ∧ K.soluteTrapping

theorem interface_kinetics_closed_from_evidence (K : InterfaceKineticsPackage)
    (E : InterfaceKineticsEvidence K) : InterfaceKineticsClosed K := by
  exact And.intro E.normalVelocityClosed E.soluteTrappingClosed

end DynamicsPhaseBoundariesSolidsCanonicalLaneLean
end HautevilleHouse