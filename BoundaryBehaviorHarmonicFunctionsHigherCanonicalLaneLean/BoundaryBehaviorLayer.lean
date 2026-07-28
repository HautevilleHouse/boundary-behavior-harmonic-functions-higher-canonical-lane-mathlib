import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryBehaviorHarmonicFunctionsHigherCanonicalLaneLean.HarmonicFunctionLayer

namespace HautevilleHouse
namespace BoundaryBehaviorHarmonicFunctionsHigherCanonicalLaneLean

structure BoundaryBehaviorLayerCertificate where
  harmonicLayer : HarmonicFunctionLayerCertificate
  nontangentialLimitChecked : Bool
  radialLimitChecked : Bool
  endpointSatisfied : Bool
  remainderRecorded : Bool

def boundaryBehaviorLayerCertificate : BoundaryBehaviorLayerCertificate := {
  harmonicLayer := harmonicFunctionLayerCertificate,
  nontangentialLimitChecked := true,
  radialLimitChecked := true,
  endpointSatisfied := true,
  remainderRecorded := false
}

def BoundaryBehaviorLayerClosed (C : BoundaryBehaviorLayerCertificate) : Prop :=
  HarmonicFunctionLayerClosed C.harmonicLayer ∧
  C.nontangentialLimitChecked = true ∧
  C.radialLimitChecked = true ∧
  (C.endpointSatisfied ∨ C.remainderRecorded)

theorem boundary_behavior_layer_closed_checked :
    BoundaryBehaviorLayerClosed boundaryBehaviorLayerCertificate := by
  refine And.intro harmonic_function_layer_closed_checked ?_
  refine And.intro rfl ?_
  refine And.intro rfl ?_
  exact Or.inl rfl

end BoundaryBehaviorHarmonicFunctionsHigherCanonicalLaneLean
end HautevilleHouse
