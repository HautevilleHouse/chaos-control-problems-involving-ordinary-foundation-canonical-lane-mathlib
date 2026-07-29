import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean

structure LyapunovPackage where
  lyapunovFunction : Type u
  lyapunovDerivativeConstraint : Prop
  controlledStabilization : Prop
  invarianceSet : Prop

def LyapunovBridgeClosed (L : LyapunovPackage) : Prop :=
  L.lyapunovDerivativeConstraint ∧ L.controlledStabilization ∧ L.invarianceSet

end ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean
end HautevilleHouse