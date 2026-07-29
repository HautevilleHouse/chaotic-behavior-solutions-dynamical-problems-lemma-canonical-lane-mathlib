import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDynamicalProblemsLemmaCanonicalLaneLean

structure InvariantMeasurePackage where
  system : ChaoticDynamicalSystem
  measureSpace : Type u
  measure : measureSpace → ℝ
  invariantUnderDynamics : Prop
  ergodic : Prop
  mixingProperty : Prop

structure InvariantMeasureEvidence (M : InvariantMeasurePackage) where
  invariantUnderDynamicsClosed : M.invariantUnderDynamics
  ergodicClosed : M.ergodic
  mixingPropertyClosed : M.mixingProperty

def InvariantMeasureClosed (M : InvariantMeasurePackage) : Prop :=
  M.invariantUnderDynamics ∧ M.ergodic ∧ M.mixingProperty

theorem invariant_measure_closed_from_evidence (M : InvariantMeasurePackage) (E : InvariantMeasureEvidence M) : InvariantMeasureClosed M := by
  exact And.intro E.invariantUnderDynamicsClosed (And.intro E.ergodicClosed E.mixingPropertyClosed)

end ChaoticBehaviorSolutionsDynamicalProblemsLemmaCanonicalLaneLean
end HautevilleHouse