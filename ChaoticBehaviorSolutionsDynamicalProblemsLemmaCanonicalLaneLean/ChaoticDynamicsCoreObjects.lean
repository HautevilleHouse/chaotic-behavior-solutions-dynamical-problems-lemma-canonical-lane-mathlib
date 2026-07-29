import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDynamicalProblemsLemma

structure ChaoticSystem where
  stateSpace : Type u
  evolution : stateSpace → stateSpace
  topology : TopologicalSpace stateSpace
  initialization : stateSpace

structure AdmittedDynamicalObject where
  system : ChaoticSystem
  chaoticBehavior : Prop
  solutionSet : Prop
  lemmaConclusion : Prop

end ChaoticBehaviorSolutionsDynamicalProblemsLemma
end HautevilleHouse