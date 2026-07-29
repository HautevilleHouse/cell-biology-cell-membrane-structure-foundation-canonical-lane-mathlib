import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellMembraneFoundation

structure IonChannelStructure where
  selectivityFilter : Prop
  gatingMechanism : Prop
  conductance : ℝ
  openState : Prop
  closedState : Prop

def IonChannelClosed (I : IonChannelStructure) : Prop :=
  I.selectivityFilter ∧ I.gatingMechanism ∧ I.openState ∧ I.closedState

end CellMembraneFoundation
end HautevilleHouse
