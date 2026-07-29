import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

structure SignalTransductionMembranePackage where
  receptorActivation : Prop
  secondMessengerProduction : Prop
  signalAmplification : Prop
  cascadeTermination : Prop
  membraneProximitySignaling : Prop

structure SignalTransductionMembraneEvidence (S : SignalTransductionMembranePackage) where
  receptorActivationClosed : S.receptorActivation
  secondMessengerProductionClosed : S.secondMessengerProduction
  signalAmplificationClosed : S.signalAmplification
  cascadeTerminationClosed : S.cascadeTermination
  membraneProximitySignalingClosed : S.membraneProximitySignaling

def SignalTransductionMembraneClosed (S : SignalTransductionMembranePackage) : Prop :=
  S.receptorActivation ∧ S.secondMessengerProduction ∧ S.signalAmplification ∧
  S.cascadeTermination ∧ S.membraneProximitySignaling

theorem signal_transduction_membrane_closed_from_evidence
    (S : SignalTransductionMembranePackage) (E : SignalTransductionMembraneEvidence S) :
    SignalTransductionMembraneClosed S := by
  exact And.intro E.receptorActivationClosed
    (And.intro E.secondMessengerProductionClosed
      (And.intro E.signalAmplificationClosed
        (And.intro E.cascadeTerminationClosed E.membraneProximitySignalingClosed)))

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse