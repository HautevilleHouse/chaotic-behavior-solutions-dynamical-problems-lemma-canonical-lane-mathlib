import HautevilleHouse.ChaoticBehaviorSolutionsDynamicalProblemsLemmaCanonicalLaneLean.LyapunovExponent

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDynamicalProblemsLemmaCanonicalLaneLean

structure ChaoticMapPackage where
  system : LyapunovExponentPackage
  denseOrbit : Prop
  sensitiveDependence : Prop
  topologicalTransitivity : Prop
  denseOrbitClosed : denseOrbit
  sensitiveDependenceClosed : sensitiveDependence
  topologicalTransitivityClosed : topologicalTransitivity

structure ChaoticMapEvidence (C : ChaoticMapPackage) where
  denseOrbitClosed : C.denseOrbit
  sensitiveDependenceClosed : C.sensitiveDependence
  topologicalTransitivityClosed : C.topologicalTransitivity

def ChaoticMapClosed (C : ChaoticMapPackage) : Prop :=
  C.denseOrbit ∧ C.sensitiveDependence ∧ C.topologicalTransitivity

theorem chaotic_map_closed_from_evidence (C : ChaoticMapPackage) (E : ChaoticMapEvidence C) :
    ChaoticMapClosed C := by
  exact And.intro E.denseOrbitClosed (And.intro E.sensitiveDependenceClosed E.topologicalTransitivityClosed)

end ChaoticBehaviorSolutionsDynamicalProblemsLemmaCanonicalLaneLean
end HautevilleHouse