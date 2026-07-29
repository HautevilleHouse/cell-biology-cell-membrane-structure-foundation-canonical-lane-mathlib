import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

structure TransportAcrossMembranePackage where
  passiveTransport : Prop
  activeTransport : Prop
  ionChannels : Prop
  transportersPumps : Prop
  selectivePermeability : Prop

structure TransportAcrossMembraneEvidence (T : TransportAcrossMembranePackage) where
  passiveTransportClosed : T.passiveTransport
  activeTransportClosed : T.activeTransport
  ionChannelsClosed : T.ionChannels
  transportersPumpsClosed : T.transportersPumps
  selectivePermeabilityClosed : T.selectivePermeability

def TransportAcrossMembraneClosed (T : TransportAcrossMembranePackage) : Prop :=
  T.passiveTransport ∧ T.activeTransport ∧ T.ionChannels ∧ T.transportersPumps ∧ T.selectivePermeability

theorem transport_across_membrane_closed_from_evidence
    (T : TransportAcrossMembranePackage) (E : TransportAcrossMembraneEvidence T) :
    TransportAcrossMembraneClosed T := by
  exact And.intro E.passiveTransportClosed
    (And.intro E.activeTransportClosed
      (And.intro E.ionChannelsClosed
        (And.intro E.transportersPumpsClosed E.selectivePermeabilityClosed)))

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse