import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

structure MembraneProteinPackage where
  integralProteins : Prop
  peripheralProteins : Prop
  glycoproteins : Prop
  receptorFunction : Prop

structure MembraneProteinEvidence (P : MembraneProteinPackage) where
  integralProteinsClosed : P.integralProteins
  peripheralProteinsClosed : P.peripheralProteins
  glycoproteinsClosed : P.glycoproteins
  receptorFunctionClosed : P.receptorFunction

def MembraneProteinClosed (P : MembraneProteinPackage) : Prop :=
  P.integralProteins ∧ P.peripheralProteins ∧ P.glycoproteins ∧ P.receptorFunction

theorem membrane_protein_closed_from_evidence (P : MembraneProteinPackage) (E : MembraneProteinEvidence P) :
    MembraneProteinClosed P := by
  exact And.intro E.integralProteinsClosed
    (And.intro E.peripheralProteinsClosed
      (And.intro E.glycoproteinsClosed E.receptorFunctionClosed))

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse