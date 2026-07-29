import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDynamicalProblemsLemmaCanonicalLaneLean

structure LyapunovExponentPackage where
  systemDimension : ℕ
  typicalExponent : ℝ
  positiveExponentExists : Prop
  exponentialDivergence : Prop
  orbitInstability : Prop

structure LyapunovExponentEvidence (L : LyapunovExponentPackage) where
  positiveExponentExistsClosed : L.positiveExponentExists
  exponentialDivergenceClosed : L.exponentialDivergence
  orbitInstabilityClosed : L.orbitInstability

def LyapunovExponentClosed (L : LyapunovExponentPackage) : Prop :=
  L.positiveExponentExists ∧ L.exponentialDivergence ∧ L.orbitInstability

theorem lyapunov_exponent_closed_from_evidence (L : LyapunovExponentPackage) (E : LyapunovExponentEvidence L) : LyapunovExponentClosed L := by
  exact And.intro E.positiveExponentExistsClosed (And.intro E.exponentialDivergenceClosed E.orbitInstabilityClosed)

end ChaoticBehaviorSolutionsDynamicalProblemsLemmaCanonicalLaneLean
end HautevilleHouse
