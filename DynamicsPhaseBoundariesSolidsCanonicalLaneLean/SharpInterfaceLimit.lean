import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsCanonicalLaneLean

structure SharpInterfaceLimitPackage (P : PhaseFieldModelPackage) where
  interfaceThickness : Prop
  asymptoticLimit : Prop
  curvatureDriven : Prop
  conservationLaw : Prop

structure SharpInterfaceLimitEvidence {P : PhaseFieldModelPackage}
    (L : SharpInterfaceLimitPackage P) where
  interfaceThicknessClosed : L.interfaceThickness
  asymptoticLimitClosed : L.asymptoticLimit
  curvatureDrivenClosed : L.curvatureDriven
  conservationLawClosed : L.conservationLaw

def SharpInterfaceLimitClosed {P : PhaseFieldModelPackage}
    (L : SharpInterfaceLimitPackage P) : Prop :=
  L.interfaceThickness ∧ L.asymptoticLimit ∧
  L.curvatureDriven ∧ L.conservationLaw

theorem sharp_interface_limit_closed_from_evidence
    {P : PhaseFieldModelPackage} (L : SharpInterfaceLimitPackage P)
    (E : SharpInterfaceLimitEvidence L) : SharpInterfaceLimitClosed L := by
  exact And.intro E.interfaceThicknessClosed
    (And.intro E.asymptoticLimitClosed
      (And.intro E.curvatureDrivenClosed E.conservationLawClosed))

end DynamicsPhaseBoundariesSolidsCanonicalLaneLean
end HautevilleHouse