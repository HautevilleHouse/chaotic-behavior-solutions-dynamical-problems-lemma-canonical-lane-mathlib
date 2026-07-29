import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDynamicalProblemsLemmaCanonicalLaneLean

structure LyapunovSpectrumPackage where
  lyapunovExponents : List ℝ
  maxExponentPositive : Prop
  sumOfExponentsNegative : Prop
  contractionExpansionBalance : Prop

structure LyapunovSpectrumEvidence (L : LyapunovSpectrumPackage) where
  maxExponentPositiveClosed : L.maxExponentPositive
  sumOfExponentsNegativeClosed : L.sumOfExponentsNegative
  contractionExpansionBalanceClosed : L.contractionExpansionBalance

def LyapunovSpectrumClosed (L : LyapunovSpectrumPackage) : Prop :=
  L.maxExponentPositive ∧ L.sumOfExponentsNegative ∧ L.contractionExpansionBalance

theorem lyapunov_spectrum_closed_from_evidence (L : LyapunovSpectrumPackage) (E : LyapunovSpectrumEvidence L) :
    LyapunovSpectrumClosed L := by
  exact And.intro E.maxExponentPositiveClosed
    (And.intro E.sumOfExponentsNegativeClosed E.contractionExpansionBalanceClosed)

end ChaoticBehaviorSolutionsDynamicalProblemsLemmaCanonicalLaneLean
end HautevilleHouse