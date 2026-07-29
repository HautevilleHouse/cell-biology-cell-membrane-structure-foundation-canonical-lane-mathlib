import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

structure SignalingComplexesPackage where
  receptorClustering : Prop
  signalCascadeInitiation : Prop
  effectorActivation : Prop
  signalTermination : Prop

structure SignalingComplexesEvidence (P : SignalingComplexesPackage) where
  receptorClusteringClosed : P.receptorClustering
  signalCascadeInitiationClosed : P.signalCascadeInitiation
  effectorActivationClosed : P.effectorActivation
  signalTerminationClosed : P.signalTermination

def SignalingComplexesClosed (P : SignalingComplexesPackage) : Prop :=
  P.receptorClustering ∧ P.signalCascadeInitiation ∧ P.effectorActivation ∧ P.signalTermination

theorem signaling_complexes_closed_from_evidence (P : SignalingComplexesPackage) (E : SignalingComplexesEvidence P) :
    SignalingComplexesClosed P := by
  exact And.intro E.receptorClusteringClosed
    (And.intro E.signalCascadeInitiationClosed
      (And.intro E.effectorActivationClosed E.signalTerminationClosed))

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse