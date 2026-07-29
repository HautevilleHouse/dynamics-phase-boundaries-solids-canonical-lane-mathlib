import canonicalLaneMathlib.AdmissibleClass
import PhaseFieldModel
import SharpInterface

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsCanonicalLaneLean

structure GrowthLaw where
  phaseFieldModel : PhaseFieldModel
  sharpInterfaceModel : SharpInterface
  velocityLaw : InterfaceVelocityLaw
  materialConservation : MaterialConservation

def GrowthLawClosed (G : GrowthLaw) : Prop :=
  PhaseFieldModelClosed G.phaseFieldModel ∧
  SharpInterfaceClosed G.sharpInterfaceModel ∧
  G.velocityLaw.defined ∧
  G.materialConservation.defined

theorem growth_law_closed (G : GrowthLaw) (hP : PhaseFieldModelClosed G.phaseFieldModel) (hS : SharpInterfaceClosed G.sharpInterfaceModel) (hV : G.velocityLaw.defined) (hM : G.materialConservation.defined) : GrowthLawClosed G := by
  exact And.intro hP (And.intro hS (And.intro hV hM))

end DynamicsPhaseBoundariesSolidsCanonicalLaneLean
end HautevilleHouse