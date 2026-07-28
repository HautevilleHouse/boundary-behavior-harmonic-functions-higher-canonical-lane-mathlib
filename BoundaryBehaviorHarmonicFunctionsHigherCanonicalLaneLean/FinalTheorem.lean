import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryBehaviorHarmonicFunctionsHigherCanonicalLaneLean.BoundaryBehaviorLayer

namespace HautevilleHouse
namespace BoundaryBehaviorHarmonicFunctionsHigherCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BoundaryBehaviorLayerClosed (boundaryBehaviorLayerCertificate)

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

def ConstrainedTheoremClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact boundary_behavior_layer_closed_checked

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

theorem constrained_theorem_closure (A : AdmissibleClass) :
    ConstrainedTheoremClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BoundaryBehaviorHarmonicFunctionsHigherCanonicalLaneLean
end HautevilleHouse
