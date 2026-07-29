import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

structure CellSignalingPackage where
  ligandReceptorBinding : Prop
  signalTransduction : Prop
  secondMessengers : Prop
  cellularResponse : Prop

structure CellSignalingEvidence (S : CellSignalingPackage) where
  ligandReceptorBindingClosed : S.ligandReceptorBinding
  signalTransductionClosed : S.signalTransduction
  secondMessengersClosed : S.secondMessengers
  cellularResponseClosed : S.cellularResponse

def CellSignalingClosed (S : CellSignalingPackage) : Prop :=
  S.ligandReceptorBinding ∧ S.signalTransduction ∧ S.secondMessengers ∧ S.cellularResponse

theorem cell_signaling_closed_from_evidence (S : CellSignalingPackage) (E : CellSignalingEvidence S) :
    CellSignalingClosed S := by
  exact And.intro E.ligandReceptorBindingClosed
    (And.intro E.signalTransductionClosed
      (And.intro E.secondMessengersClosed E.cellularResponseClosed))

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse