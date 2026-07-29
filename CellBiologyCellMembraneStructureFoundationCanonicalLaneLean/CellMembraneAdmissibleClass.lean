import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

structure CellMembraneAdmittedObject where
  cellType : String
  membraneProteins : List String
  fluidity : Prop
  barrierSelectivity : Prop
  conclusion : carrierStructureClosed
  carrierStructureClosed : Prop

definition CellMembraneWitnessClosed (O : CellMembraneAdmittedObject) : Prop :=
  O.carrierStructureClosed

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse
