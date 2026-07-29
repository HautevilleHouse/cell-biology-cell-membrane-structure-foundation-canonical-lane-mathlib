import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

def gateClosed (A : CellMembraneAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : CellMembraneAdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse
