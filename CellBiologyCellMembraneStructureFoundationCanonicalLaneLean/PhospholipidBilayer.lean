import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

structure PhospholipidBilayerPackage where
  hydrophilicHeads : Prop
  hydrophobicTails : Prop
  selfAssembly : Prop
  bilayerFormation : Prop
  fluidMosaic : Prop

structure PhospholipidBilayerEvidence (B : PhospholipidBilayerPackage) where
  hydrophilicHeadsClosed : B.hydrophilicHeads
  hydrophobicTailsClosed : B.hydrophobicTails
  selfAssemblyClosed : B.selfAssembly
  bilayerFormationClosed : B.bilayerFormation
  fluidMosaicClosed : B.fluidMosaic

def PhospholipidBilayerClosed (B : PhospholipidBilayerPackage) : Prop :=
  B.hydrophilicHeads ∧ B.hydrophobicTails ∧ B.selfAssembly ∧ B.bilayerFormation ∧ B.fluidMosaic

theorem phospholipid_bilayer_closed_from_evidence (B : PhospholipidBilayerPackage) (E : PhospholipidBilayerEvidence B) : PhospholipidBilayerClosed B := by
  exact And.intro E.hydrophilicHeadsClosed (And.intro E.hydrophobicTailsClosed (And.intro E.selfAssemblyClosed (And.intro E.bilayerFormationClosed E.fluidMosaicClosed)))

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse
