import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChaoticBehaviorSolutionsDynamicalProblemsLemma.ChaoticDynamicsCoreObjects

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDynamicalProblemsLemma

structure SensitivityPackage (sys : ChaoticSystem) where
  lyapunovExponent : Prop
  epsilonDeltaCondition : Prop
  initialConditionCloseness : sys.initialization → Prop
  divergenceRate : Prop
  sensitiveDependence : Prop
  lyapunovExponentClosed : lyapunovExponent
  epsilonDeltaConditionClosed : epsilonDeltaCondition
  divergenceRateClosed : divergenceRate
  sensitiveDependenceClosed : sensitiveDependence

def SensitivityClosed {sys : ChaoticSystem} (S : SensitivityPackage sys) : Prop :=
  S.lyapunovExponent ∧ S.epsilonDeltaCondition ∧ S.divergenceRate ∧ S.sensitiveDependence

theorem sensitivity_closed_from_evidence {sys : ChaoticSystem} (S : SensitivityPackage sys)
    (E : S.lyapunovExponent ∧ S.epsilonDeltaCondition ∧ S.divergenceRate ∧ S.sensitiveDependence) :
    SensitivityClosed S := by
  exact E

end ChaoticBehaviorSolutionsDynamicalProblemsLemma
end HautevilleHouse