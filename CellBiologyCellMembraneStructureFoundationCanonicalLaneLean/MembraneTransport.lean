import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

structure PassiveTransport where
  simpleDiffusion : Prop
  facilitatedDiffusion : Prop
  osmosis : Prop
  simpleDiffusionTerm : simpleDiffusion
  facilitatedDiffusionTerm : facilitatedDiffusion
  osmosisTerm : osmosis

def PassiveTransportClosed (P : PassiveTransport) : Prop :=
  P.simpleDiffusion ∧ P.facilitatedDiffusion ∧ P.osmosis

theorem passive_transport_closed_from_structure (P : PassiveTransport) :
    PassiveTransportClosed P := by
  exact And.intro P.simpleDiffusionTerm (And.intro P.facilitatedDiffusionTerm P.osmosisTerm)

structure ActiveTransport where
  atpPowered : Prop
  againstConcentrationGradient : Prop
  pumpProteinRequired : Prop
  againstConcentrationGradientTerm : againstConcentrationGradient
  pumpProteinRequiredTerm : pumpProteinRequired

def MembraneTransportClosed (P : PassiveTransport) (A : ActiveTransport) : Prop :=
  PassiveTransportClosed P ∧ A.atpPowered ∧ A.againstConcentrationGradient ∧ A.pumpProteinRequired

theorem membrane_transport_closed (P : PassiveTransport) (A : ActiveTransport) :
    MembraneTransportClosed P A := by
  refine And.intro (passive_transport_closed_from_structure P) (And.intro A.atpPowered (And.intro A.againstConcentrationGradientTerm A.pumpProteinRequiredTerm))

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse