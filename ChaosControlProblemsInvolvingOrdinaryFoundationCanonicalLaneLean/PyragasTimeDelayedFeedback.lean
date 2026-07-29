import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean

structure PyragasTimeDelayedFeedbackPackage where
  targetUnstablePeriodicOrbit : Prop
  feedbackGainTuned : Prop
  timeDelayMatched : Prop
  stabilizationAchieved : Prop
  stabilityDomainCharacterized : Prop

def PyragasTimeDelayedFeedbackClosed (P : PyragasTimeDelayedFeedbackPackage) : Prop :=
  P.targetUnstablePeriodicOrbit ∧ P.feedbackGainTuned ∧ P.timeDelayMatched ∧ P.stabilizationAchieved ∧ P.stabilityDomainCharacterized

end ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean
end HautevilleHouse
