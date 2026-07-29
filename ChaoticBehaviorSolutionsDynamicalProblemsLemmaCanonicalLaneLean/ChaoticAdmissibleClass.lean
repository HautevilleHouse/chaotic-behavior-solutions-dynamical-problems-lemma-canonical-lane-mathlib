import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDynamicalProblemsLemmaCanonicalLaneLean

structure ChaoticAdmissibleObject where
  phaseSpace : Type u
  dynamics : phaseSpace → phaseSpace
  lyapunovExponent : LyapunovExponentPackage
  horseshoe : HorseshoeEmbeddingPackage
  physicalMeasure : Prop

structure ChaoticAdmissibleClass where
  object : ChaoticAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : ChaoticAdmissibleClass) : Prop :=
  (LyapunovExponentClosed A.object.lyapunovExponent) ∧
  (isotopyContracting A.object.horseshoe) ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end ChaoticBehaviorSolutionsDynamicalProblemsLemmaCanonicalLaneLean
end HautevilleHouse