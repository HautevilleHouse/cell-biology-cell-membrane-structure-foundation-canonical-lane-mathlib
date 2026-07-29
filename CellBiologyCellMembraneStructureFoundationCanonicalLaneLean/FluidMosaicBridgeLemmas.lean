import CellBiologyCellMembraneStructureFoundationCanonicalLaneLean.CellMembraneAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CellMembraneWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse
