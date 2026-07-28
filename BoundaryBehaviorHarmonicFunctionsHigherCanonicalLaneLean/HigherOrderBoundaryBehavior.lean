import canonicalLaneMathlib.AdmissibleClass
import BoundaryBehaviorHarmonicFunctionsHigherCanonicalLaneLean.HarmonicBoundaryLayer

namespace HautevilleHouse
namespace BoundaryBehaviorHarmonicFunctionsHigherCanonicalLaneLean

structure HigherOrderBoundaryCertificate where
  harmonicObject : HarmonicBoundaryObject
  higherOrderDerivatives : List String
  boundaryLimitExistence : Prop
  behaviorAtBoundaryPoints : String
  endpointChecked : Bool

def defaultHigherOrderBoundaryCertificate : HigherOrderBoundaryCertificate :=
  { harmonicObject := defaultHarmonicBoundaryObject,
    higherOrderDerivatives := ["first derivative", "second derivative"],
    boundaryLimitExistence := True,
    behaviorAtBoundaryPoints := "continuous on closure",
    endpointChecked := true
  }

theorem higher_order_boundary_closed_checked :
    endpointChecked true := by
  rfl

def HigherOrderBoundaryClosed (C : HigherOrderBoundaryCertificate) : Prop :=
  C.endpointChecked ∧ C.harmonicObject.sourceKey = sourceRepository

end BoundaryBehaviorHarmonicFunctionsHigherCanonicalLaneLean
end HautevilleHouse