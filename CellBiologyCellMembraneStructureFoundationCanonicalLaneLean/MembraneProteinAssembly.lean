import HautevilleHouse.CellBiologyCellMembraneStructureFoundationCanonicalLaneLean.LipidBilayerStructure

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

structure MembraneProteinPackage {L : LipidBilayerPackage} where
  integralProteins : Prop
  peripheralProteins : Prop
  proteinMobility : Prop
  proteinLipidInteractions : Prop

structure MembraneProteinEvidence {L : LipidBilayerPackage} (M : MembraneProteinPackage L) where
  integralProteinsClosed : M.integralProteins
  peripheralProteinsClosed : M.peripheralProteins
  proteinMobilityClosed : M.proteinMobility
  proteinLipidInteractionsClosed : M.proteinLipidInteractions

def MembraneProteinClosed {L : LipidBilayerPackage} (M : MembraneProteinPackage L) : Prop :=
  M.integralProteins ∧ M.peripheralProteins ∧ M.proteinMobility ∧ M.proteinLipidInteractions

theorem membrane_protein_closed_from_evidence {L : LipidBilayerPackage} (M : MembraneProteinPackage L) (E : MembraneProteinEvidence M) :
    MembraneProteinClosed M := by
  exact And.intro E.integralProteinsClosed
    (And.intro E.peripheralProteinsClosed
      (And.intro E.proteinMobilityClosed E.proteinLipidInteractionsClosed))

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse