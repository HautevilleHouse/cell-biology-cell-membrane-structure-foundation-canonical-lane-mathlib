import HautevilleHouse.CellBiologyCellMembraneStructureFoundationCanonicalLaneLean.SignalingComplexes

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

structure MembraneDynamicsPackage {L : LipidBilayerPackage} {M : MembraneProteinPackage L} {T : TransportPackage L M} {S : SignalingPackage L M T} where
  endocytosis : Prop
  exocytosis : Prop
  membraneFusion : Prop
  membraneFission : Prop
  cytoskeletonAttachment : Prop

structure MembraneDynamicsEvidence {L : LipidBilayerPackage} {M : MembraneProteinPackage L} {T : TransportPackage L M} {S : SignalingPackage L M T} (D : MembraneDynamicsPackage L M T S) where
  endocytosisClosed : D.endocytosis
  exocytosisClosed : D.exocytosis
  membraneFusionClosed : D.membraneFusion
  membraneFissionClosed : D.membraneFission
  cytoskeletonAttachmentClosed : D.cytoskeletonAttachment

def MembraneDynamicsClosed {L : LipidBilayerPackage} {M : MembraneProteinPackage L} {T : TransportPackage L M} {S : SignalingPackage L M T} (D : MembraneDynamicsPackage L M T S) : Prop :=
  D.endocytosis ∧ D.exocytosis ∧ D.membraneFusion ∧ D.membraneFission ∧ D.cytoskeletonAttachment

theorem membrane_dynamics_closed_from_evidence {L : LipidBilayerPackage} {M : MembraneProteinPackage L} {T : TransportPackage L M} {S : SignalingPackage L M T} (D : MembraneDynamicsPackage L M T S) (E : MembraneDynamicsEvidence D) :
    MembraneDynamicsClosed D := by
  exact And.intro E.endocytosisClosed
    (And.intro E.exocytosisClosed
      (And.intro E.membraneFusionClosed
        (And.intro E.membraneFissionClosed E.cytoskeletonAttachmentClosed)))

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse