import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean

structure LaSallePackage where
  lyapunovFunction : Type u
  invariantSet : Prop
  limitSetContained : Prop
  attractorAsymptotic : Prop

def LaSalleClosed (L : LaSallePackage) : Prop :=
  L.invariantSet ∧ L.limitSetContained ∧ L.attractorAsymptotic

end ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean
end HautevilleHouse