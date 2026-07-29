import HautevilleHouse.ChaoticBehaviorSolutionsDynamicalProblemsLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDynamicalProblemsLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : ChaoticBehaviorAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ChaoticWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ChaoticBehaviorSolutionsDynamicalProblemsLemmaCanonicalLaneLean
end HautevilleHouse