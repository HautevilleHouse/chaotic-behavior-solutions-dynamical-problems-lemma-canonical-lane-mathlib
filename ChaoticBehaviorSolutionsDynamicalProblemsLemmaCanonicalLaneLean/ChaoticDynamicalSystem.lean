import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDynamicalProblemsLemmaCanonicalLaneLean

structure ChaoticDynamicalSystem where
  stateSpace : Type u
  dynamics : stateSpace → stateSpace
  continuous : Prop
  sensitiveDependence : Prop
  topologicalTransitivity : Prop
  densePeriodicOrbits : Prop

structure ChaoticDynamicalEvidence (S : ChaoticDynamicalSystem) where
  continuousClosed : S.continuous
  sensitiveDependenceClosed : S.sensitiveDependence
  topologicalTransitivityClosed : S.topologicalTransitivity
  densePeriodicOrbitsClosed : S.densePeriodicOrbits

def ChaoticDynamicalClosed (S : ChaoticDynamicalSystem) : Prop :=
  S.continuous ∧ S.sensitiveDependence ∧ S.topologicalTransitivity ∧ S.densePeriodicOrbits

theorem chaotic_dynamical_closed_from_evidence (S : ChaoticDynamicalSystem) (E : ChaoticDynamicalEvidence S) : ChaoticDynamicalClosed S := by
  exact And.intro E.continuousClosed (And.intro E.sensitiveDependenceClosed (And.intro E.topologicalTransitivityClosed E.densePeriodicOrbitsClosed))

end ChaoticBehaviorSolutionsDynamicalProblemsLemmaCanonicalLaneLean
end HautevilleHouse