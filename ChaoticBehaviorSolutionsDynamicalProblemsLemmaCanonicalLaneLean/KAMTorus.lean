import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDynamicalProblemsLemmaCanonicalLaneLean

structure KAMTorusPackage where
  invariantTorus : Type u
  irrationalRotation : Prop
  quasiperiodicMotion : Prop
  stabilityUnderPerturbation : Prop

structure KAMTorusEvidence (K : KAMTorusPackage) where
  irrationalRotationClosed : K.irrationalRotation
  quasiperiodicMotionClosed : K.quasiperiodicMotion
  stabilityUnderPerturbationClosed : K.stabilityUnderPerturbation

def KAMTorusClosed (K : KAMTorusPackage) : Prop :=
  K.irrationalRotation ∧ K.quasiperiodicMotion ∧ K.stabilityUnderPerturbation

theorem kam_torus_closed_from_evidence (K : KAMTorusPackage) (E : KAMTorusEvidence K) :
    KAMTorusClosed K := by
  exact And.intro E.irrationalRotationClosed
    (And.intro E.quasiperiodicMotionClosed E.stabilityUnderPerturbationClosed)

end ChaoticBehaviorSolutionsDynamicalProblemsLemmaCanonicalLaneLean
end HautevilleHouse