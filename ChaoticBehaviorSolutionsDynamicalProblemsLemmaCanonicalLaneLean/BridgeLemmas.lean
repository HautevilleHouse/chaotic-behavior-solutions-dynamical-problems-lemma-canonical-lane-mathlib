import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChaoticBehaviorSolutionsDynamicalProblemsLemma.ChaoticDynamicsCoreObjects

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDynamicalProblemsLemma

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | AdmittedDynamicalObject.mk _ _ _ _ _ _ c => c.chaoticBehavior ∧ c.solutionSet

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.lemmaConclusion

end ChaoticBehaviorSolutionsDynamicalProblemsLemma
end HautevilleHouse