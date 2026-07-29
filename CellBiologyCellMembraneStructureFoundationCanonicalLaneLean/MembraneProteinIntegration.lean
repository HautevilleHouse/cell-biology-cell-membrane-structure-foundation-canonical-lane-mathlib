import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

structure MembraneProteinIntegration where
  transmembraneDomain : Prop
  integrationViaHydrophobicMatch : Prop
  lateralMobility : Prop
  orientationAsymmetric : Prop
  integrationViaHydrophobicMatchTerm : integrationViaHydrophobicMatch
  lateralMobilityTerm : lateralMobility
  orientationAsymmetricTerm : orientationAsymmetric

def MembraneProteinIntegrationClosed (M : MembraneProteinIntegration) : Prop :=
  M.transmembraneDomain ∧ M.integrationViaHydrophobicMatch ∧ M.lateralMobility ∧ M.orientationAsymmetric

theorem membrane_protein_integration_closed_from_structure (M : MembraneProteinIntegration) :
    MembraneProteinIntegrationClosed M := by
  exact And.intro M.transmembraneDomain (And.intro M.integrationViaHydrophobicMatchTerm (And.intro M.lateralMobilityTerm M.orientationAsymmetricTerm))

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse