import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

structure TransportMechanismPackage where
  passiveDiffusion : Prop
  facilitatedDiffusion : Prop
  activeTransport : Prop
  vesicularTransport : Prop

structure TransportMechanismEvidence (T : TransportMechanismPackage) where
  passiveDiffusionClosed : T.passiveDiffusion
  facilitatedDiffusionClosed : T.facilitatedDiffusion
  activeTransportClosed : T.activeTransport
  vesicularTransportClosed : T.vesicularTransport

def TransportMechanismClosed (T : TransportMechanismPackage) : Prop :=
  T.passiveDiffusion ∧ T.facilitatedDiffusion ∧ T.activeTransport ∧ T.vesicularTransport

theorem transport_mechanism_closed_from_evidence (T : TransportMechanismPackage) (E : TransportMechanismEvidence T) :
    TransportMechanismClosed T := by
  exact And.intro E.passiveDiffusionClosed
    (And.intro E.facilitatedDiffusionClosed
      (And.intro E.activeTransportClosed E.vesicularTransportClosed))

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse