import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDynamicalProblemsLemmaCanonicalLaneLean

structure TopologicalEntropyPackage where
  entropyValue : ℝ
  positiveEntropy : Prop
  mixingProperty : Prop
  chaosCharacterization : Prop

structure TopologicalEntropyEvidence (T : TopologicalEntropyPackage) where
  positiveEntropyClosed : T.positiveEntropy
  mixingPropertyClosed : T.mixingProperty
  chaosCharacterizationClosed : T.chaosCharacterization

def TopologicalEntropyClosed (T : TopologicalEntropyPackage) : Prop :=
  T.positiveEntropy ∧ T.mixingProperty ∧ T.chaosCharacterization

theorem topological_entropy_closed_from_evidence (T : TopologicalEntropyPackage) (E : TopologicalEntropyEvidence T) : TopologicalEntropyClosed T := by
  exact And.intro E.positiveEntropyClosed (And.intro E.mixingPropertyClosed E.chaosCharacterizationClosed)

end ChaoticBehaviorSolutionsDynamicalProblemsLemmaCanonicalLaneLean
end HautevilleHouse
