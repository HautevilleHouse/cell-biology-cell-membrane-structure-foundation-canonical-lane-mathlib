import CellBiologyCellMembraneStructureFoundationCanonicalLaneLean.LipidBilayerStructure

/-!
# Transport Function Package
-/

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

structure TransportFunctionPackage (L : LipidBilayerPackage) where
  passiveDiffusion : Prop
  facilitatedDiffusion : Prop
  activeTransport : Prop
  ionChannelGating : Prop

structure TransportFunctionEvidence {L : LipidBilayerPackage}
    (T : TransportFunctionPackage L) where
  passiveDiffusionClosed : T.passiveDiffusion
  facilitatedDiffusionClosed : T.facilitatedDiffusion
  activeTransportClosed : T.activeTransport
  ionChannelGatingClosed : T.ionChannelGating

def TransportFunctionClosed {L : LipidBilayerPackage}
    (T : TransportFunctionPackage L) : Prop :=
  T.passiveDiffusion ∧ T.facilitatedDiffusion ∧
  T.activeTransport ∧ T.ionChannelGating

theorem transport_function_closed_from_evidence
    {L : LipidBilayerPackage} (T : TransportFunctionPackage L)
    (E : TransportFunctionEvidence T) : TransportFunctionClosed T := by
  exact And.intro E.passiveDiffusionClosed
    (And.intro E.facilitatedDiffusionClosed
      (And.intro E.activeTransportClosed E.ionChannelGatingClosed))

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse
