import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

structure LipidBilayerPackage where
  membrane : Type u
  innerLeaflet : Type v
  outerLeaflet : Type w
  lipidComposition : Prop
  bilayerThickness : Prop
  fluidity : Prop
  asymmetry : Prop

structure LipidBilayerEvidence (L : LipidBilayerPackage) where
  lipidCompositionClosed : L.lipidComposition
  bilayerThicknessClosed : L.bilayerThickness
  fluidityClosed : L.fluidity
  asymmetryClosed : L.asymmetry

def LipidBilayerClosed (L : LipidBilayerPackage) : Prop :=
  L.lipidComposition ∧ L.bilayerThickness ∧ L.fluidity ∧ L.asymmetry

theorem lipid_bilayer_closed_from_evidence (L : LipidBilayerPackage) (E : LipidBilayerEvidence L) :
    LipidBilayerClosed L := by
  exact And.intro E.lipidCompositionClosed
    (And.intro E.bilayerThicknessClosed
      (And.intro E.fluidityClosed E.asymmetryClosed))

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse