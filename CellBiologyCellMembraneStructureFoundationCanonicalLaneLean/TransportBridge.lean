import CellBiologyCellMembraneStructureFoundationCanonicalLaneLean.MembraneFoundationPackage

/-!
# Transport Bridge Package
-/

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

structure TransportBridgePackage {B : LipidBilayerPackage}
    {T : TransportProcessesPackage B} {M : MembraneFoundationPackage T} (S : SignalTransductionPackage T) where
  passiveDiffusion : Prop
  activeTransport : Prop
  vesicularTransport : Prop
  ionChannels : Prop

structure TransportBridgeEvidence {B : LipidBilayerPackage}
    {T : TransportProcessesPackage B} {M : MembraneFoundationPackage T} {S : SignalTransductionPackage T}
    (Tr : TransportBridgePackage S) where
  passiveDiffusionClosed : Tr.passiveDiffusion
  activeTransportClosed : Tr.activeTransport
  vesicularTransportClosed : Tr.vesicularTransport
  ionChannelsClosed : Tr.ionChannels

def TransportBridgeClosed {B : LipidBilayerPackage}
    {T : TransportProcessesPackage B} {M : MembraneFoundationPackage T} {S : SignalTransductionPackage T}
    (Tr : TransportBridgePackage S) : Prop :=
  Tr.passiveDiffusion ∧ Tr.activeTransport ∧ Tr.vesicularTransport ∧ Tr.ionChannels

theorem transport_bridge_closed_from_evidence
    {B : LipidBilayerPackage} {T : TransportProcessesPackage B} {M : MembraneFoundationPackage T} {S : SignalTransductionPackage T}
    (Tr : TransportBridgePackage S) (E : TransportBridgeEvidence Tr) :
    TransportBridgeClosed Tr := by
  exact And.intro E.passiveDiffusionClosed
    (And.intro E.activeTransportClosed
      (And.intro E.vesicularTransportClosed E.ionChannelsClosed))

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse