import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

structure CellMembraneAdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

structure AdmittedObject where
  membraneSystem : Type
  bilayerFormed : Prop
  proteinFunctioning : Prop
  transportActive : Prop
  conclusion : bilayerFormed ∧ proteinFunctioning ∧ transportActive

def cellMembraneAdmittedClosure (A : CellMembraneAdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse
