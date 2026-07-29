import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean

structure AttractorReconstructionPackage where
  phaseSpaceEmbedding : Prop
  delayCoordinateMap : Prop
  attractorRecovered : Prop
  reconstructionErrorBound : Prop

def AttractorReconstructionClosed (A : AttractorReconstructionPackage) : Prop :=
  A.phaseSpaceEmbedding ∧ A.delayCoordinateMap ∧ A.attractorRecovered ∧ A.reconstructionErrorBound

end ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean
end HautevilleHouse
