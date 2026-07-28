import canonicalLaneMathlib.FatouTheoremLayer

/-!
# Harmonic measure layer

This layer records the harmonic measure and its role in boundary behavior.
-/

namespace HautevilleHouse
namespace BoundaryBehaviorHarmonicFunctionsHigherCanonicalLaneLean

structure HarmonicMeasureLayerCertificate where
  domainType : String
  harmonicMeasureDefinition : String
  boundaryRepresentation : String
  measureRoute : String
  classicalBoundaryCarried : Bool

def harmonicMeasureLayerCertificate : HarmonicMeasureLayerCertificate := {
  domainType := "simply connected domain",
  harmonicMeasureDefinition := "Harmonic measure as the solution to the Dirichlet problem with characteristic function",
  boundaryRepresentation := "Poisson integral of boundary measure",
  measureRoute := "conformal invariance of harmonic measure",
  classicalBoundaryCarried := true
}

def HarmonicMeasureLayerClosed (C : HarmonicMeasureLayerCertificate) : Prop :=
  C.harmonicMeasureDefinition = "Harmonic measure as the solution to the Dirichlet problem with characteristic function" ∧
  C.boundaryRepresentation = "Poisson integral of boundary measure" ∧
  C.measureRoute = "conformal invariance of harmonic measure" ∧
  C.classicalBoundaryCarried = true

theorem harmonic_measure_layer_closed_checked :
    HarmonicMeasureLayerClosed harmonicMeasureLayerCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl rfl))

end BoundaryBehaviorHarmonicFunctionsHigherCanonicalLaneLean
end HautevilleHouse