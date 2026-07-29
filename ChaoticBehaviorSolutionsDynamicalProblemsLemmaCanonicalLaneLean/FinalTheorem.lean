import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChaoticBehaviorSolutionsDynamicalProblemsLemma.BridgeLemmas
import HautevilleHouse.ChaoticBehaviorSolutionsDynamicalProblemsLemma.GateLemmas

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDynamicalProblemsLemma

def ConstrainedChaoticClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_chaotic_endgame (A : AdmissibleClass) :
    ConstrainedChaoticClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ChaoticBehaviorSolutionsDynamicalProblemsLemma
end HautevilleHouse