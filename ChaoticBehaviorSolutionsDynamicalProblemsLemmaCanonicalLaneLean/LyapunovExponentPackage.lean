import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDynamicalProblemsLemmaCanonicalLaneLean

structure LyapunovExponentPackage where
  phaseSpace : Type u
  dynamics : phaseSpace → phaseSpace
  lyapunovExponent : ℝ
  positiveLyapunovExponent : Prop
  sensitiveDependence : Prop
  ergodicInvariantMeasure : Prop

structure LyapunovExponentEvidence (L : LyapunovExponentPackage) where
  positiveLyapunovExponentClosed : L.positiveLyapunovExponent
  sensitiveDependenceClosed : L.sensitiveDependence
  ergodicInvariantMeasureClosed : L.ergodicInvariantMeasure

def LyapunovExponentClosed (L : LyapunovExponentPackage) : Prop :=
  L.positiveLyapunovExponent ∧ L.sensitiveDependence ∧ L.ergodicInvariantMeasure

theorem lyapunov_exponent_closed_from_evidence (L : LyapunovExponentPackage)
    (E : LyapunovExponentEvidence L) : LyapunovExponentClosed L := by
  exact And.intro E.positiveLyapunovExponentClosed
    (And.intro E.sensitiveDependenceClosed E.ergodicInvariantMeasureClosed)

end ChaoticBehaviorSolutionsDynamicalProblemsLemmaCanonicalLaneLean
end HautevilleHouse