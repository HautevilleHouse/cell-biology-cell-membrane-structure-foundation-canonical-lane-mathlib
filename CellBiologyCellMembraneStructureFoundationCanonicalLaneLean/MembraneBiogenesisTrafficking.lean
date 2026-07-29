import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

structure MembraneBiogenesisTraffickingPackage where
  lipidSynthesis : Prop
  proteinInsertion : Prop
  vesicleBudding : Prop
  vesicleFusion : Prop
  membraneRecycling : Prop

structure MembraneBiogenesisTraffickingEvidence (B : MembraneBiogenesisTraffickingPackage) where
  lipidSynthesisClosed : B.lipidSynthesis
  proteinInsertionClosed : B.proteinInsertion
  vesicleBuddingClosed : B.vesicleBudding
  vesicleFusionClosed : B.vesicleFusion
  membraneRecyclingClosed : B.membraneRecycling

def MembraneBiogenesisTraffickingClosed (B : MembraneBiogenesisTraffickingPackage) : Prop :=
  B.lipidSynthesis ∧ B.proteinInsertion ∧ B.vesicleBudding ∧ B.vesicleFusion ∧ B.membraneRecycling

theorem membrane_biogenesis_trafficking_closed_from_evidence
    (B : MembraneBiogenesisTraffickingPackage) (E : MembraneBiogenesisTraffickingEvidence B) :
    MembraneBiogenesisTraffickingClosed B := by
  exact And.intro E.lipidSynthesisClosed
    (And.intro E.proteinInsertionClosed
      (And.intro E.vesicleBuddingClosed
        (And.intro E.vesicleFusionClosed E.membraneRecyclingClosed)))

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse