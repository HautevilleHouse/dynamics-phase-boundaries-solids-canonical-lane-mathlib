import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsCanonicalLaneLean

structure SharpInterfaceModel where
  interfaceSurface : Type u
  curvatureRegularization : Prop
  mobilityLaw : Prop
  anisotropyFunction : Type v
  surfaceTension : Prop

structure SharpInterfaceEvidence (I : SharpInterfaceModel) where
  curvatureRegularizationClosed : I.curvatureRegularization
  mobilityLawClosed : I.mobilityLaw
  surfaceTensionClosed : I.surfaceTension

end DynamicsPhaseBoundariesSolidsCanonicalLaneLean
end HautevilleHouse