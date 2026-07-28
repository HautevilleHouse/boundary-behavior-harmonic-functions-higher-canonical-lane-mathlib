import canonicalLaneMathlib.AdmissibleClass
import BoundaryBehaviorHarmonicFunctionsHigherCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryBehaviorHarmonicFunctionsHigherCanonicalLaneLean

structure HarmonicBoundaryObject where
  sourceKey : String
  theoremObject : String
  harmonicFunction : String
  boundaryDomain : String
  boundaryBehavior : String
  sourceKeyChecked : sourceKey = sourceRepository
  theoremObjectChecked : theoremObject = sourceDescription
  operatorModelChecked : Prop
  operatorModelWitness : operatorModelChecked
  spectralPersistenceBridgeChecked : Prop
  spectralPersistenceBridgeWitness : spectralPersistenceBridgeChecked
  sourceBoundaryLedgerChecked : Prop
  sourceBoundaryLedgerWitness : sourceBoundaryLedgerChecked
  classicalRemainderCarried : formalizationCertificate.sourceConjectureClosureClaimed = false

def NativeBridgeClosed (O : HarmonicBoundaryObject) : Prop :=
  O.sourceKey = sourceRepository ∧
  O.theoremObject = sourceDescription ∧
  O.operatorModelChecked ∧
  O.spectralPersistenceBridgeChecked ∧
  O.sourceBoundaryLedgerChecked ∧
  (formalizationCertificate.sourceConjectureClosureClaimed = false)

end BoundaryBehaviorHarmonicFunctionsHigherCanonicalLaneLean
end HautevilleHouse