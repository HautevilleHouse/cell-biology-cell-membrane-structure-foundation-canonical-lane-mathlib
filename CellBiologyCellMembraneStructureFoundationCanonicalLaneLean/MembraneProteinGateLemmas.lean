import CellBiologyCellMembraneStructureFoundationCanonicalLaneLean.FluidMosaicBridgeLemmas

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A :=
  A.gateWitness

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse
