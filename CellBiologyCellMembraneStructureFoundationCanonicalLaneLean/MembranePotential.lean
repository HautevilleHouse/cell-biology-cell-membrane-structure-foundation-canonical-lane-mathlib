import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

structure MembranePotentialPackage where
  ionConcentrationGradient : Prop
  restingPotential : Prop
  actionPotential : Prop
  electrogenicPump : Prop

structure MembranePotentialEvidence (M : MembranePotentialPackage) where
  ionConcentrationGradientClosed : M.ionConcentrationGradient
  restingPotentialClosed : M.restingPotential
  actionPotentialClosed : M.actionPotential
  electrogenicPumpClosed : M.electrogenicPump

def MembranePotentialClosed (M : MembranePotentialPackage) : Prop :=
  M.ionConcentrationGradient ∧ M.restingPotential ∧ M.actionPotential ∧ M.electrogenicPump

theorem membrane_potential_closed_from_evidence (M : MembranePotentialPackage) (E : MembranePotentialEvidence M) :
    MembranePotentialClosed M := by
  exact And.intro E.ionConcentrationGradientClosed
    (And.intro E.restingPotentialClosed
      (And.intro E.actionPotentialClosed E.electrogenicPumpClosed))

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse