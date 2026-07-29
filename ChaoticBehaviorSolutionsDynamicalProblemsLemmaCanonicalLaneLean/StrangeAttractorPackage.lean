import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDynamicalProblemsLemmaCanonicalLaneLean

structure StrangeAttractorPackage where
  system : ChaoticDynamicalSystem
  attractorSet : Set (stateSpace ChaoticDynamicalSystem)
  fractalDimension : Prop
  sensitiveDependenceOnInitialConditions : Prop
  topologicalTransitivityOnAttractor : Prop
  existenceOfPeriodicOrbits : Prop

structure StrangeAttractorEvidence (A : StrangeAttractorPackage) where
  fractalDimensionClosed : A.fractalDimension
  sensitiveDependenceOnInitialConditionsClosed : A.sensitiveDependenceOnInitialConditions
  topologicalTransitivityOnAttractorClosed : A.topologicalTransitivityOnAttractor
  existenceOfPeriodicOrbitsClosed : A.existenceOfPeriodicOrbits

def StrangeAttractorClosed (A : StrangeAttractorPackage) : Prop :=
  A.fractalDimension ∧ A.sensitiveDependenceOnInitialConditions ∧ A.topologicalTransitivityOnAttractor ∧ A.existenceOfPeriodicOrbits

theorem strange_attractor_closed_from_evidence (A : StrangeAttractorPackage) (E : StrangeAttractorEvidence A) : StrangeAttractorClosed A := by
  exact And.intro E.fractalDimensionClosed (And.intro E.sensitiveDependenceOnInitialConditionsClosed (And.intro E.topologicalTransitivityOnAttractorClosed E.existenceOfPeriodicOrbitsClosed))

end ChaoticBehaviorSolutionsDynamicalProblemsLemmaCanonicalLaneLean
end HautevilleHouse