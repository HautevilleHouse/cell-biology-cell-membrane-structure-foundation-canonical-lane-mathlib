import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

structure MembraneProteinsPackage where
  integralProteins : Prop
  peripheralProteins : Prop
  glycoproteins : Prop
  receptors : Prop
  transportProteins : Prop

structure MembraneProteinsEvidence (P : MembraneProteinsPackage) where
  integralProteinsClosed : P.integralProteins
  peripheralProteinsClosed : P.peripheralProteins
  glycoproteinsClosed : P.glycoproteins
  receptorsClosed : P.receptors
  transportProteinsClosed : P.transportProteins

def MembraneProteinsClosed (P : MembraneProteinsPackage) : Prop :=
  P.integralProteins ∧ P.peripheralProteins ∧ P.glycoproteins ∧ P.receptors ∧ P.transportProteins

theorem membrane_proteins_closed_from_evidence
    (P : MembraneProteinsPackage) (E : MembraneProteinsEvidence P) :
    MembraneProteinsClosed P :=
  And.intro E.integralProteinsClosed
    (And.intro E.peripheralProteinsClosed
      (And.intro E.glycoproteinsClosed
        (And.intro E.receptorsClosed E.transportProteinsClosed)))

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse