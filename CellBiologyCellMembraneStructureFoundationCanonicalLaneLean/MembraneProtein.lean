import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

structure MembraneProteinPackage where
  integralProtein : Prop
  peripheralProtein : Prop
  transmembraneDomain : Prop
  lipidAnchor : Prop
  proteinFunction : Prop

structure MembraneProteinEvidence (M : MembraneProteinPackage) where
  integralProteinClosed : M.integralProtein
  peripheralProteinClosed : M.peripheralProtein
  transmembraneDomainClosed : M.transmembraneDomain
  lipidAnchorClosed : M.lipidAnchor
  proteinFunctionClosed : M.proteinFunction

def MembraneProteinClosed (M : MembraneProteinPackage) : Prop :=
  M.integralProtein ∧ M.peripheralProtein ∧ M.transmembraneDomain ∧ M.lipidAnchor ∧ M.proteinFunction

theorem membrane_protein_closed_from_evidence (M : MembraneProteinPackage) (E : MembraneProteinEvidence M) : MembraneProteinClosed M := by
  exact And.intro E.integralProteinClosed (And.intro E.peripheralProteinClosed (And.intro E.transmembraneDomainClosed (And.intro E.lipidAnchorClosed E.proteinFunctionClosed)))

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse
