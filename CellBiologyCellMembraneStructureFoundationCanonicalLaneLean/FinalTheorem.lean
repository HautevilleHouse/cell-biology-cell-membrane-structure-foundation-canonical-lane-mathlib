import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

def ConstrainedCellMembraneClosure (A : CellMembraneAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cell_membrane_endgame (A : CellMembraneAdmissibleClass) : ConstrainedCellMembraneClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse
