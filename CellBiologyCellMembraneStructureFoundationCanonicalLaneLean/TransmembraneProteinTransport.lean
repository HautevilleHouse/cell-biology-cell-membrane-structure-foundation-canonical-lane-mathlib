import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellMembraneStructureFoundationCanonicalLaneLean.MembraneLipidBilayer

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

structure TransmembraneProteinTransport {B : MembranLipidBilayer} where
  proteinChannel : Type u
  passiveDiffusion : Prop
  activeTransport : Prop
  ionGradient : ℝ

structure TransmembraneProteinTransportEvidence {B : MembranLipidBilayer}
    (T : TransmembraneProteinTransport B) where
  passiveDiffusionClosed : T.passiveDiffusion
  activeTransportClosed : T.activeTransport
  ionGradientSufficient : T.ionGradient > 0

def TransmembraneProteinTransportClosed {B : MembranLipidBilayer}
    (T : TransmembraneProteinTransport B) : Prop :=
  T.passiveDiffusion ∧ T.activeTransport ∧ (T.ionGradient > 0)

theorem transmembrane_protein_transport_closed_from_evidence
    {B : MembranLipidBilayer} (T : TransmembraneProteinTransport B)
    (E : TransmembraneProteinTransportEvidence T) :
    TransmembraneProteinTransportClosed T :=
  And.intro E.passiveDiffusionClosed
    (And.intro E.activeTransportClosed E.ionGradientSufficient)

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse