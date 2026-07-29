import CellBiologyCellMembraneStructureFoundationCanonicalLaneLean.TransportFunctionPackage

/-!
# Signal Transduction Package
-/

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

structure SignalTransductionPackage {L : LipidBilayerPackage}
    (T : TransportFunctionPackage L) where
  receptorLigandBinding : Prop
  conformationChange : Prop
  secondMessengerCascade : Prop
  signalAmplification : Prop

structure SignalTransductionEvidence {L : LipidBilayerPackage}
    {T : TransportFunctionPackage L}
    (S : SignalTransductionPackage T) where
  receptorLigandBindingClosed : S.receptorLigandBinding
  conformationChangeClosed : S.conformationChange
  secondMessengerCascadeClosed : S.secondMessengerCascade
  signalAmplificationClosed : S.signalAmplification

def SignalTransductionClosed {L : LipidBilayerPackage}
    {T : TransportFunctionPackage L}
    (S : SignalTransductionPackage T) : Prop :=
  S.receptorLigandBinding ∧ S.conformationChange ∧
  S.secondMessengerCascade ∧ S.signalAmplification

theorem signal_transduction_closed_from_evidence
    {L : LipidBilayerPackage} {T : TransportFunctionPackage L}
    (S : SignalTransductionPackage T)
    (E : SignalTransductionEvidence S) : SignalTransductionClosed S := by
  exact And.intro E.receptorLigandBindingClosed
    (And.intro E.conformationChangeClosed
      (And.intro E.secondMessengerCascadeClosed E.signalAmplificationClosed))

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse
