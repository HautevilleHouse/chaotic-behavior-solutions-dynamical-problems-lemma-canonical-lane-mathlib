import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDynamicalProblemsLemmaCanonicalLaneLean

structure BifurcationAnalysisPackage where
  system : ChaoticDynamicalSystem
  parameterSpace : Type u
  bifurcationPoints : Set parameterSpace
  periodDoublingRoute : Prop
  transitionToChaos : Prop
  criticalExponents : Prop

structure BifurcationAnalysisEvidence (B : BifurcationAnalysisPackage) where
  periodDoublingRouteClosed : B.periodDoublingRoute
  transitionToChaosClosed : B.transitionToChaos
  criticalExponentsClosed : B.criticalExponents

def BifurcationAnalysisClosed (B : BifurcationAnalysisPackage) : Prop :=
  B.periodDoublingRoute ∧ B.transitionToChaos ∧ B.criticalExponents

theorem bifurcation_analysis_closed_from_evidence (B : BifurcationAnalysisPackage) (E : BifurcationAnalysisEvidence B) : BifurcationAnalysisClosed B := by
  exact And.intro E.periodDoublingRouteClosed (And.intro E.transitionToChaosClosed E.criticalExponentsClosed)

end ChaoticBehaviorSolutionsDynamicalProblemsLemmaCanonicalLaneLean
end HautevilleHouse