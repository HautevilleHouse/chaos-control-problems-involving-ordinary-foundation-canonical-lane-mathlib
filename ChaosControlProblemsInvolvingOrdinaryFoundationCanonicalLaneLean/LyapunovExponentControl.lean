import ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean.TheoreticalFramework

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean

structure LyapunovControlPackage {F : ChaosControlOrdinaryFoundationFramework} where
  lyapunovFunction : Type u
  exponentBound : ℝ
  exponentialStabilization : Prop
  controlLaw : Prop

structure LyapunovControlEvidence {F : ChaosControlOrdinaryFoundationFramework}
    (L : LyapunovControlPackage F) where
  exponentialStabilizationClosed : L.exponentialStabilization
  controlLawClosed : L.controlLaw

def LyapunovControlClosed {F : ChaosControlOrdinaryFoundationFramework}
    (L : LyapunovControlPackage F) : Prop :=
  L.exponentialStabilization ∧ L.controlLaw

theorem lyapunov_control_closed_from_evidence
    {F : ChaosControlOrdinaryFoundationFramework}
    (L : LyapunovControlPackage F) (E : LyapunovControlEvidence L) :
    LyapunovControlClosed L := by
  exact And.intro E.exponentialStabilizationClosed E.controlLawClosed

end ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean
end HautevilleHouse