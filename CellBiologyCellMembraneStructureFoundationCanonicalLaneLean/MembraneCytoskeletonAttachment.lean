import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

structure MembraneCytoskeletonAttachment where
  actinFilaments : Prop
  spectrinNetwork : Prop
  ankyrinLinker : Prop
  cellShapeStabilization : Prop
  spectrinNetworkTerm : spectrinNetwork
  ankyrinLinkerTerm : ankyrinLinker
  cellShapeStabilizationTerm : cellShapeStabilization

def MembraneCytoskeletonAttachmentClosed (M : MembraneCytoskeletonAttachment) : Prop :=
  M.actinFilaments ∧ M.spectrinNetwork ∧ M.ankyrinLinker ∧ M.cellShapeStabilization

theorem membrane_cytoskeleton_attachment_closed (M : MembraneCytoskeletonAttachment) :
    MembraneCytoskeletonAttachmentClosed M := by
  exact And.intro M.actinFilaments (And.intro M.spectrinNetworkTerm (And.intro M.ankyrinLinkerTerm M.cellShapeStabilizationTerm))

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse