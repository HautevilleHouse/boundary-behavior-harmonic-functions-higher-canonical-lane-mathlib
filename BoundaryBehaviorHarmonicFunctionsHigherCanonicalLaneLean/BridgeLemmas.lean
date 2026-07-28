import canonicalLaneMathlib.AdmissibleClass
import BoundaryBehaviorHarmonicFunctionsHigherCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryBehaviorHarmonicFunctionsHigherCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact ⟨A.object.sourceKeyChecked,
    A.object.theoremObjectChecked,
    A.object.operatorModelWitness,
    A.object.spectralPersistenceBridgeWitness,
    A.object.sourceBoundaryLedgerWitness,
    A.object.classicalRemainderCarried⟩

end BoundaryBehaviorHarmonicFunctionsHigherCanonicalLaneLean
end HautevilleHouse