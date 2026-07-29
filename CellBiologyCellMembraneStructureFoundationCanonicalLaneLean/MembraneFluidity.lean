import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

structure MembraneFluidityPackage where
  lipidOrderParameter : Prop
  phaseTransitionTemperature : Prop
  cholesterolModulation : Prop
  lateralDiffusionRate : Prop

structure MembraneFluidityEvidence (P : MembraneFluidityPackage) where
  lipidOrderParameterClosed : P.lipidOrderParameter
  phaseTransitionTemperatureClosed : P.phaseTransitionTemperature
  cholesterolModulationClosed : P.cholesterolModulation
  lateralDiffusionRateClosed : P.lateralDiffusionRate

def MembraneFluidityClosed (P : MembraneFluidityPackage) : Prop :=
  P.lipidOrderParameter ∧ P.phaseTransitionTemperature ∧ P.cholesterolModulation ∧ P.lateralDiffusionRate

theorem membrane_fluidity_closed_from_evidence (P : MembraneFluidityPackage) (E : MembraneFluidityEvidence P) :
    MembraneFluidityClosed P := by
  exact And.intro E.lipidOrderParameterClosed
    (And.intro E.phaseTransitionTemperatureClosed
      (And.intro E.cholesterolModulationClosed E.lateralDiffusionRateClosed))

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse