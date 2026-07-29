import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

structure LipidRaftDomain where
  saturatedFattyAcids : Prop
  cholesterolRich : Prop
  phaseSeparation : Prop
  signalingPlatformRole : Prop
  cholesterolRichTerm : cholesterolRich
  phaseSeparationTerm : phaseSeparation
  signalingPlatformRoleTerm : signalingPlatformRole

def LipidRaftFormationClosed (L : LipidRaftDomain) : Prop :=
  L.saturatedFattyAcids ∧ L.cholesterolRich ∧ L.phaseSeparation ∧ L.signalingPlatformRole

theorem lipid_raft_formation_closed_from_domain (L : LipidRaftDomain) :
    LipidRaftFormationClosed L := by
  exact And.intro L.saturatedFattyAcids (And.intro L.cholesterolRichTerm (And.intro L.phaseSeparationTerm L.signalingPlatformRoleTerm))

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse