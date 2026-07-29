import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundation

structure PhospholipidBilayer where
  lipidComposition : Prop
  fluidity : Prop
  asymmetry : Prop

structure MembraneProtein where
  orientation : Prop
  mobility : Prop
  function : Prop

structure MembraneComponentsPackage where
  bilayer : PhospholipidBilayer
  proteins : MembraneProtein
  cholesterol : Prop

structure MembraneComponentsEvidence (M : MembraneComponentsPackage) where
  bilayerClosed : M.bilayer.lipidComposition ∧ M.bilayer.fluidity ∧ M.bilayer.asymmetry
  proteinsClosed : M.proteins.orientation ∧ M.proteins.mobility ∧ M.proteins.function
  cholesterolClosed : M.cholesterol

def MembraneComponentsClosed (M : MembraneComponentsPackage) : Prop :=
  M.bilayer.lipidComposition ∧ M.bilayer.fluidity ∧ M.bilayer.asymmetry ∧
  M.proteins.orientation ∧ M.proteins.mobility ∧ M.proteins.function ∧
  M.cholesterol

theorem membrane_components_closed_from_evidence (M : MembraneComponentsPackage) (E : MembraneComponentsEvidence M) :
    MembraneComponentsClosed M := by
  exact And.intro E.bilayerClosed (And.intro E.proteinsClosed E.cholesterolClosed)

end CellBiologyCellMembraneStructureFoundation
end HautevilleHouse