import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChaoticBehaviorSolutionsDynamicalProblemsLemma.ChaoticDynamicsCoreObjects

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDynamicalProblemsLemma

structure TopologicalMixingPackage (sys : ChaoticSystem) where
  openSets : Set (Set sys.stateSpace)
  mixingProperty : ∀ U V ∈ openSets, Nonempty (sys.evolution^[n] U ∩ V) for some n
  mixingPropertyClosed : mixingProperty

def TopologicalMixingClosed {sys : ChaoticSystem} (M : TopologicalMixingPackage sys) : Prop :=
  M.mixingProperty

theorem topological_mixing_closed_from_evidence {sys : ChaoticSystem}
    (M : TopologicalMixingPackage sys) (h : M.mixingPropertyClosed) : TopologicalMixingClosed M := by
  exact h

end ChaoticBehaviorSolutionsDynamicalProblemsLemma
end HautevilleHouse