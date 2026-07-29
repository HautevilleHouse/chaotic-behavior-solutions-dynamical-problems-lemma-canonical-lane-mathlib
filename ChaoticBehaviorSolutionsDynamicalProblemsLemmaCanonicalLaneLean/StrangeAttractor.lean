import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDynamicalProblemsLemmaCanonicalLaneLean

structure StrangeAttractorPackage where
  phaseSpace : Type u
  flow : phaseSpace → ℝ → phaseSpace
  invariantSet : Set phaseSpace
  sensitiveDependence : Prop
  topologicalTransitivity : Prop
  densePeriodicOrbits : Prop

def strangeAttractorClosed (S : StrangeAttractorPackage) : Prop :=
  S.sensitiveDependence ∧ S.topologicalTransitivity ∧ S.densePeriodicOrbits

end ChaoticBehaviorSolutionsDynamicalProblemsLemmaCanonicalLaneLean
end HautevilleHouse
