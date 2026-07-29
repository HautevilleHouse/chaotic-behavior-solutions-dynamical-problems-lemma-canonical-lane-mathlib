import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDynamicalProblemsLemmaCanonicalLaneLean

structure TurbulentAttractorPackage where
  attractorSet : Type u
  invarianceUnderFlow : Prop
  sensitiveDependence : Prop
  topologicalTransitivity : Prop
  denseOrbits : Prop

structure TurbulentAttractorEvidence (A : TurbulentAttractorPackage) where
  invarianceUnderFlowClosed : A.invarianceUnderFlow
  sensitiveDependenceClosed : A.sensitiveDependence
  topologicalTransitivityClosed : A.topologicalTransitivity
  denseOrbitsClosed : A.denseOrbits

def TurbulentAttractorClosed (A : TurbulentAttractorPackage) : Prop :=
  A.invarianceUnderFlow ∧ A.sensitiveDependence ∧ A.topologicalTransitivity ∧ A.denseOrbits

theorem turbulent_attractor_closed_from_evidence (A : TurbulentAttractorPackage) (E : TurbulentAttractorEvidence A) :
    TurbulentAttractorClosed A := by
  exact And.intro E.invarianceUnderFlowClosed
    (And.intro E.sensitiveDependenceClosed
      (And.intro E.topologicalTransitivityClosed E.denseOrbitsClosed))

end ChaoticBehaviorSolutionsDynamicalProblemsLemmaCanonicalLaneLean
end HautevilleHouse