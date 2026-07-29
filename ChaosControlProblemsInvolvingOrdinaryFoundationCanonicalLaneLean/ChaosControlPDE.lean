import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean

structure ChaosControlPDEPackage where
  controlledSystem : Type u
  feedbackLaw : Type v
  ordinaryDynamics : Prop
  chaosSuppressionGuarantee : Prop
  inputRegularity : Prop

def ChaosControlPDEClosed (C : ChaosControlPDEPackage) : Prop :=
  C.ordinaryDynamics ∧ C.chaosSuppressionGuarantee ∧ C.inputRegularity

end ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean
end HautevilleHouse