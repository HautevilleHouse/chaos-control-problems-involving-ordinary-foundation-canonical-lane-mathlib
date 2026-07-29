import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean

structure FeedbackSynthesisPackage (L : LyapunovExponentPackage) where
  controlSignal : Type u
  systemPlant : Type v
  closedLoopStable : Prop
  robustnessMargin : Prop
  actuatorLimits : Prop

structure FeedbackSynthesisEvidence {L : LyapunovExponentPackage}
    (F : FeedbackSynthesisPackage L) where
  closedLoopStableClosed : F.closedLoopStable
  robustnessMarginClosed : F.robustnessMargin
  actuatorLimitsClosed : F.actuatorLimits

def FeedbackSynthesisClosed {L : LyapunovExponentPackage}
    (F : FeedbackSynthesisPackage L) : Prop :=
  F.closedLoopStable ∧ F.robustnessMargin ∧ F.actuatorLimits

theorem feedback_synthesis_closed_from_evidence
    {L : LyapunovExponentPackage} (F : FeedbackSynthesisPackage L)
    (E : FeedbackSynthesisEvidence F) : FeedbackSynthesisClosed F := by
  exact And.intro E.closedLoopStableClosed
    (And.intro E.robustnessMarginClosed E.actuatorLimitsClosed)

end HautevilleHouse
end ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean