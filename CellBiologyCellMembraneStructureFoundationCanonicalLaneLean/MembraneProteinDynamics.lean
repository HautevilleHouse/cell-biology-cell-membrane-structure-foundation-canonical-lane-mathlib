import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

structure MembraneProteinDynamicsPackage where
  proteinMobility : Prop
  lateralDiffusion : Prop
  proteinProteinInteractions : Prop
  membraneDomainPartitioning : Prop

structure MembraneProteinDynamicsEvidence (D : MembraneProteinDynamicsPackage) where
  proteinMobilityClosed : D.proteinMobility
  lateralDiffusionClosed : D.lateralDiffusion
  proteinProteinInteractionsClosed : D.proteinProteinInteractions
  membraneDomainPartitioningClosed : D.membraneDomainPartitioning

def MembraneProteinDynamicsClosed (D : MembraneProteinDynamicsPackage) : Prop :=
  D.proteinMobility ∧ D.lateralDiffusion ∧ D.proteinProteinInteractions ∧ D.membraneDomainPartitioning

theorem membrane_protein_dynamics_closed_from_evidence
    (D : MembraneProteinDynamicsPackage) (E : MembraneProteinDynamicsEvidence D) :
    MembraneProteinDynamicsClosed D := by
  exact And.intro E.proteinMobilityClosed
    (And.intro E.lateralDiffusionClosed
      (And.intro E.proteinProteinInteractionsClosed E.membraneDomainPartitioningClosed))

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse