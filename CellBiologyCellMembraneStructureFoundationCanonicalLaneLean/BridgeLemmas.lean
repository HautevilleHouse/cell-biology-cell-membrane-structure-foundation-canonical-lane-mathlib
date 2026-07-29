import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

def bridgeClosed (A : CellMembraneAdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : CellMembraneAdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse
