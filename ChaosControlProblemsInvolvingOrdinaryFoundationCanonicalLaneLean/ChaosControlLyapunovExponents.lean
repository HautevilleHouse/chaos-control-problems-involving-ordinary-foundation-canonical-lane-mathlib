import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean

structure LyapunovExponentPackage where
  jacobianMatrix : Type u
  characteristicMultipliers : Type v
  largestExponentNegative : Prop
  excitablePerturbations : Prop
  errorBoundFinite : Prop

structure LyapunovExponentEvidence (L : LyapunovExponentPackage) where
  largestExponentNegativeClosed : L.largestExponentNegative
  excitablePerturbationsClosed : L.excitablePerturbations
  errorBoundFiniteClosed : L.errorBoundFinite

def LyapunovExponentClosed (L : LyapunovExponentPackage) : Prop :=
  L.largestExponentNegative ∧ L.excitablePerturbations ∧ L.errorBoundFinite

theorem lyapunov_exponent_closed_from_evidence (L : LyapunovExponentPackage)
    (E : LyapunovExponentEvidence L) : LyapunovExponentClosed L := by
  exact And.intro E.largestExponentNegativeClosed
    (And.intro E.excitablePerturbationsClosed E.errorBoundFiniteClosed)

end HautevilleHouse
end ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean