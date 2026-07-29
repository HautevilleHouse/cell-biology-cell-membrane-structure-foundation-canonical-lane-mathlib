import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

structure TransportProcessesPackage where
  passiveTransport : Prop
  activeTransport : Prop
  facilitatedDiffusion : Prop
  ionChannels : Prop
  endocytosisExocytosis : Prop

structure TransportProcessesEvidence (T : TransportProcessesPackage) where
  passiveTransportClosed : T.passiveTransport
  activeTransportClosed : T.activeTransport
  facilitatedDiffusionClosed : T.facilitatedDiffusion
  ionChannelsClosed : T.ionChannels
  endocytosisExocytosisClosed : T.endocytosisExocytosis

def TransportProcessesClosed (T : TransportProcessesPackage) : Prop :=
  T.passiveTransport ∧ T.activeTransport ∧ T.facilitatedDiffusion ∧ T.ionChannels ∧ T.endocytosisExocytosis

theorem transport_processes_closed_from_evidence
    (T : TransportProcessesPackage) (E : TransportProcessesEvidence T) :
    TransportProcessesClosed T :=
  And.intro E.passiveTransportClosed
    (And.intro E.activeTransportClosed
      (And.intro E.facilitatedDiffusionClosed
        (And.intro E.ionChannelsClosed E.endocytosisExocytosisClosed)))

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse