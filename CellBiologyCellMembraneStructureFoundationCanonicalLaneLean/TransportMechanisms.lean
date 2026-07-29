import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

structure TransportMechanismsPackage where
  passiveDiffusion : Prop
  facilitatedDiffusion : Prop
  activeTransport : Prop
  ionChannel : Prop
  carrierProtein : Prop
  membranePotential : Prop

structure TransportMechanismsEvidence (T : TransportMechanismsPackage) where
  passiveDiffusionClosed : T.passiveDiffusion
  facilitatedDiffusionClosed : T.facilitatedDiffusion
  activeTransportClosed : T.activeTransport
  ionChannelClosed : T.ionChannel
  carrierProteinClosed : T.carrierProtein
  membranePotentialClosed : T.membranePotential

def TransportMechanismsClosed (T : TransportMechanismsPackage) : Prop :=
  T.passiveDiffusion ∧ T.facilitatedDiffusion ∧ T.activeTransport ∧ T.ionChannel ∧ T.carrierProtein ∧ T.membranePotential

theorem transport_mechanisms_closed_from_evidence (T : TransportMechanismsPackage) (E : TransportMechanismsEvidence T) : TransportMechanismsClosed T := by
  exact And.intro E.passiveDiffusionClosed (And.intro E.facilitatedDiffusionClosed (And.intro E.activeTransportClosed (And.intro E.ionChannelClosed (And.intro E.carrierProteinClosed E.membranePotentialClosed))))

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse
