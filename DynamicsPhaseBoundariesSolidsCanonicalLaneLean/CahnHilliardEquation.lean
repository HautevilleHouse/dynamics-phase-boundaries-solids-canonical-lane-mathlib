import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsCanonicalLaneLean

structure CahnHilliardEquation where
  concentrationField : Type u
  chemicalPotential : Type v
  diffusionEquation : Prop
  mobilityFunction : Prop
  freeEnergyDensity : Prop

structure CahnHilliardEvidence (C : CahnHilliardEquation) where
  diffusionEquationClosed : C.diffusionEquation
  mobilityFunctionClosed : C.mobilityFunction
  freeEnergyDensityClosed : C.freeEnergyDensity

end DynamicsPhaseBoundariesSolidsCanonicalLaneLean
end HautevilleHouse