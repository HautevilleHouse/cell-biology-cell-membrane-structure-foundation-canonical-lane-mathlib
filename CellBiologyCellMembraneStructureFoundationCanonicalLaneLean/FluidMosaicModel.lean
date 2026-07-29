import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellMembraneFoundation

structure LipidRaftStructure where
  cholesterolContent : Prop
  sphingolipidEnriched : Prop
  orderedPhase : Prop

def FluidMosaicModelClosed (L : LipidRaftStructure) : Prop :=
  L.cholesterolContent ∧ L.sphingolipidEnriched ∧ L.orderedPhase

end CellMembraneFoundation
end HautevilleHouse
