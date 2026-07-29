import HautevilleHouse.ChaoticBehaviorSolutionsDynamicalProblemsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDynamicalProblemsLemmaCanonicalLaneLean

structure DynamicalSystemAttractorPackage where
  phaseSpace : Type u
  flow : phaseSpace → ℝ → phaseSpace
  invariantSet : Set phaseSpace
  basinOfAttraction : Set phaseSpace
  attractorCompact : Prop
  attractorInvariant : Prop
  attractorAttracting : Prop
  attractorCompactClosed : attractorCompact
  attractorInvariantClosed : attractorInvariant
  attractorAttractingClosed : attractorAttracting

structure DynamicalSystemAttractorEvidence (A : DynamicalSystemAttractorPackage) where
  attractorCompactClosed : A.attractorCompact
  attractorInvariantClosed : A.attractorInvariant
  attractorAttractingClosed : A.attractorAttracting

def DynamicalSystemAttractorClosed (A : DynamicalSystemAttractorPackage) : Prop :=
  A.attractorCompact ∧ A.attractorInvariant ∧ A.attractorAttracting

theorem attractor_closed_from_evidence (A : DynamicalSystemAttractorPackage) (E : DynamicalSystemAttractorEvidence A) :
    DynamicalSystemAttractorClosed A := by
  exact And.intro E.attractorCompactClosed (And.intro E.attractorInvariantClosed E.attractorAttractingClosed)

end ChaoticBehaviorSolutionsDynamicalProblemsLemmaCanonicalLaneLean
end HautevilleHouse