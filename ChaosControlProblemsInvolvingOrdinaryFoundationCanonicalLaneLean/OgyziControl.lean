import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean

structure OgyziControlPackage where
  poincareSection : Type u
  linearizedDynamics : Type v
  smallPerturbationControl : Prop
  stabilizationGuarantee : Prop

def OgyziControlClosed (O : OgyziControlPackage) : Prop :=
  O.smallPerturbationControl ∧ O.stabilizationGuarantee

end ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean
end HautevilleHouse