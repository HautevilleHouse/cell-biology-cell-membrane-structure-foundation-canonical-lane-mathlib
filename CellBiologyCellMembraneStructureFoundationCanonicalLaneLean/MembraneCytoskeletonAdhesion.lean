import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

structure MembraneCytoskeletonAdhesionPackage where
  linkerProteins : Prop
  corticalActinNetwork : Prop
  adhesionComplexes : Prop
  mechanicalCoupling : Prop
  forceTransmission : Prop

structure MembraneCytoskeletonAdhesionEvidence (M : MembraneCytoskeletonAdhesionPackage) where
  linkerProteinsClosed : M.linkerProteins
  corticalActinNetworkClosed : M.corticalActinNetwork
  adhesionComplexesClosed : M.adhesionComplexes
  mechanicalCouplingClosed : M.mechanicalCoupling
  forceTransmissionClosed : M.forceTransmission

def MembraneCytoskeletonAdhesionClosed (M : MembraneCytoskeletonAdhesionPackage) : Prop :=
  M.linkerProteins ∧ M.corticalActinNetwork ∧ M.adhesionComplexes ∧
  M.mechanicalCoupling ∧ M.forceTransmission

theorem membrane_cytoskeleton_adhesion_closed_from_evidence
    (M : MembraneCytoskeletonAdhesionPackage) (E : MembraneCytoskeletonAdhesionEvidence M) :
    MembraneCytoskeletonAdhesionClosed M := by
  exact And.intro E.linkerProteinsClosed
    (And.intro E.corticalActinNetworkClosed
      (And.intro E.adhesionComplexesClosed
        (And.intro E.mechanicalCouplingClosed E.forceTransmissionClosed)))

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse