import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

structure MembranLipidBilayer where
  phospholipidHeadGroup : Type u
  fattyAcidTail : Type v
  hydrophilicHead : Prop
  hydrophobicTail : Prop
  bilayerThickness : ℝ
  fluidMosaicModel : Prop

structure MembranLipidBilayerEvidence (M : MembranLipidBilayer) where
  hydrophilicHeadClosed : M.hydrophilicHead
  hydrophobicTailClosed : M.hydrophobicTail
  bilayerThicknessPositive : M.bilayerThickness > 0
  fluidMosaicModelClosed : M.fluidMosaicModel

def MembranLipidBilayerClosed (M : MembranLipidBilayer) : Prop :=
  M.hydrophilicHead ∧ M.hydrophobicTail ∧ (M.bilayerThickness > 0) ∧ M.fluidMosaicModel

theorem membrane_lipid_bilayer_closed_from_evidence (M : MembranLipidBilayer)
    (E : MembranLipidBilayerEvidence M) : MembranLipidBilayerClosed M :=
  And.intro E.hydrophilicHeadClosed
    (And.intro E.hydrophobicTailClosed
      (And.intro E.bilayerThicknessPositive E.fluidMosaicModelClosed))

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse