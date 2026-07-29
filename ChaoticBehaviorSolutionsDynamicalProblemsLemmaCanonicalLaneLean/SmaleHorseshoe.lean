import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDynamicalProblemsLemmaCanonicalLaneLean

structure SmaleHorseshoePackage where
  hyperbolicSet : Type u
  invariantSet : Prop
  topologicalConjugacyToShift : Prop
  chaosCriteria : Prop

structure SmaleHorseshoeEvidence (S : SmaleHorseshoePackage) where
  invariantSetClosed : S.invariantSet
  topologicalConjugacyToShiftClosed : S.topologicalConjugacyToShift
  chaosCriteriaClosed : S.chaosCriteria

def SmaleHorseshoeClosed (S : SmaleHorseshoePackage) : Prop :=
  S.invariantSet ∧ S.topologicalConjugacyToShift ∧ S.chaosCriteria

theorem smale_horseshoe_closed_from_evidence (S : SmaleHorseshoePackage) (E : SmaleHorseshoeEvidence S) :
    SmaleHorseshoeClosed S := by
  exact And.intro E.invariantSetClosed
    (And.intro E.topologicalConjugacyToShiftClosed E.chaosCriteriaClosed)

end ChaoticBehaviorSolutionsDynamicalProblemsLemmaCanonicalLaneLean
end HautevilleHouse