import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellMembraneStructureFoundationCanonicalLaneLean.MembraneLipidBilayer

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

structure MembraneReceptorSignaling {B : MembranLipidBilayer} where
  receptorProtein : Type u
  ligandBinding : Prop
  conformationChange : Prop
  downstreamCascade : Prop

structure MembraneReceptorSignalingEvidence {B : MembranLipidBilayer}
    (R : MembraneReceptorSignaling B) where
  ligandBindingClosed : R.ligandBinding
  conformationChangeClosed : R.conformationChange
  downstreamCascadeClosed : R.downstreamCascade

def MembraneReceptorSignalingClosed {B : MembranLipidBilayer}
    (R : MembraneReceptorSignaling B) : Prop :=
  R.ligandBinding ∧ R.conformationChange ∧ R.downstreamCascade

theorem membrane_receptor_signaling_closed_from_evidence
    {B : MembranLipidBilayer} (R : MembraneReceptorSignaling B)
    (E : MembraneReceptorSignalingEvidence R) :
    MembraneReceptorSignalingClosed R :=
  And.intro E.ligandBindingClosed
    (And.intro E.conformationChangeClosed E.downstreamCascadeClosed)

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse