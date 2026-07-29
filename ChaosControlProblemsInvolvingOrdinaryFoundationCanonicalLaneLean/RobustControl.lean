import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean.ChaosControlSystem

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean

structure RobustControlPackage {α : Type u} (S : ChaosControlSystem α) where
  uncertaintyBound : ℝ
  robustnessMargin : ℝ
  disturbanceAttenuation : Prop
  guaranteedStabilityMargin : ℝ

structure RobustControlEvidence {α : Type u} {S : ChaosControlSystem α}
    (R : RobustControlPackage S) where
  uncertaintyBoundFinite : R.uncertaintyBound < ∞
  robustnessMarginPositive : R.robustnessMargin > 0
  disturbanceAttenuationClosed : R.disturbanceAttenuation

def RobustControlClosed {α : Type u} {S : ChaosControlSystem α}
    (R : RobustControlPackage S) : Prop :=
  R.disturbanceAttenuation ∧ R.robustnessMargin > 0 ∧ R.uncertaintyBound < ∞

theorem robust_control_closed_from_evidence {α : Type u} {S : ChaosControlSystem α}
    (R : RobustControlPackage S) (E : RobustControlEvidence R) : RobustControlClosed R := by
  exact And.intro E.disturbanceAttenuationClosed
    (And.intro E.robustnessMarginPositive E.uncertaintyBoundFinite)

end ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean
end HautevilleHouse