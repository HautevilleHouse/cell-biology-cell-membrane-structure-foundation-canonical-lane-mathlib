import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellMembraneStructureFoundationCanonicalLaneLean.MembraneLipidBilayer

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

structure MembraneFusion {B : MembranLipidBilayer} where
  vesicleMembrane : Type u
  targetMembrane : Type v
  SNAREProteinsPresent : Prop
  fusionPoreFormation : Prop
  cargoRelease : Prop

structure MembraneFusionEvidence {B : MembranLipidBilayer}
    (F : MembraneFusion B) where
  SNAREProteinsPresentClosed : F.SNAREProteinsPresent
  fusionPoreFormationClosed : F.fusionPoreFormation
  cargoReleaseClosed : F.cargoRelease

def MembraneFusionClosed {B : MembranLipidBilayer}
    (F : MembraneFusion B) : Prop :=
  F.SNAREProteinsPresent ∧ F.fusionPoreFormation ∧ F.cargoRelease

theorem membrane_fusion_closed_from_evidence
    {B : MembranLipidBilayer} (F : MembraneFusion B)
    (E : MembraneFusionEvidence F) : MembraneFusionClosed F :=
  And.intro E.SNAREProteinsPresentClosed
    (And.intro E.fusionPoreFormationClosed E.cargoReleaseClosed)

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse