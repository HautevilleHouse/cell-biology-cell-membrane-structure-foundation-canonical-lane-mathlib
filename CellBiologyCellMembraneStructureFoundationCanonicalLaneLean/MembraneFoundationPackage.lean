import CellBiologyCellMembraneStructureFoundationCanonicalLaneLean.LipidBilayer

/-!
# Membrane Foundation Package
-/

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureFoundationCanonicalLaneLean

structure MembraneFoundationPackage {B : LipidBilayerPackage} (T : TransportProcessesPackage B) where
  phospholipidBilayer : Prop
  fluidMosaicModel : Prop
  selectivePermeability : Prop
  signalTransduction : Prop

structure MembraneFoundationEvidence {B : LipidBilayerPackage} {T : TransportProcessesPackage B} (M : MembraneFoundationPackage T) where
  phospholipidBilayerClosed : M.phospholipidBilayer
  fluidMosaicModelClosed : M.fluidMosaicModel
  selectivePermeabilityClosed : M.selectivePermeability
  signalTransductionClosed : M.signalTransduction

def MembraneFoundationClosed {B : LipidBilayerPackage} {T : TransportProcessesPackage B} (M : MembraneFoundationPackage T) : Prop :=
  M.phospholipidBilayer ∧ M.fluidMosaicModel ∧ M.selectivePermeability ∧ M.signalTransduction

theorem membrane_foundation_closed_from_evidence
    {B : LipidBilayerPackage} {T : TransportProcessesPackage B} (M : MembraneFoundationPackage T) (E : MembraneFoundationEvidence M) :
    MembraneFoundationClosed M := by
  exact And.intro E.phospholipidBilayerClosed
    (And.intro E.fluidMosaicModelClosed
      (And.intro E.selectivePermeabilityClosed E.signalTransductionClosed))

end CellBiologyCellMembraneStructureFoundationCanonicalLaneLean
end HautevilleHouse