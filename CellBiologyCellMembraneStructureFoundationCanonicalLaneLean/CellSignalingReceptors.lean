import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

structure GProteinCoupledReceptor where
  sevenTransmembraneHelices : Prop
  ligandBinding : Prop
  gProteinActivation : Prop
  secondMessengerCascade : Prop
  ligandBindingTerm : ligandBinding
  gProteinActivationTerm : gProteinActivation
  secondMessengerCascadeTerm : secondMessengerCascade

def GProteinCoupledReceptorClosed (G : GProteinCoupledReceptor) : Prop :=
  G.sevenTransmembraneHelices ∧ G.ligandBinding ∧ G.gProteinActivation ∧ G.secondMessengerCascade

theorem g_protein_coupled_receptor_closed_from_structure (G : GProteinCoupledReceptor) :
    GProteinCoupledReceptorClosed G := by
  exact And.intro G.sevenTransmembraneHelices (And.intro G.ligandBindingTerm (And.intro G.gProteinActivationTerm G.secondMessengerCascadeTerm))

structure ReceptorTyrosineKinase where
  extracellularDomain : Prop
  intracellularKinaseDomain : Prop
  dimerizationUponLigand : Prop
  autophosphorylation : Prop
  dimerizationUponLigandTerm : dimerizationUponLigand
  autophosphorylationTerm : autophosphorylation

def ReceptorTyrosineKinaseClosed (R : ReceptorTyrosineKinase) : Prop :=
  R.extracellularDomain ∧ R.intracellularKinaseDomain ∧ R.dimerizationUponLigand ∧ R.autophosphorylation

theorem receptor_tyrosine_kinase_closed_from_structure (R : ReceptorTyrosineKinase) :
    ReceptorTyrosineKinaseClosed R := by
  exact And.intro R.extracellularDomain (And.intro R.intracellularKinaseDomain (And.intro R.dimerizationUponLigandTerm R.autophosphorylationTerm))

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse