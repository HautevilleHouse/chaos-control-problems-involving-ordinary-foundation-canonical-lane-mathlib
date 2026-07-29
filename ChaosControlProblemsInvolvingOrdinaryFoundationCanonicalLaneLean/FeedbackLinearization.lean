import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean.ChaosControlSystem

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean

structure FeedbackLinearizationPackage {α : Type u} (S : ChaosControlSystem α) where
  diffeomorphism : S.stateSpace → S.stateSpace
  linearizedDynamics : S.stateSpace → S.controlSpace → S.stateSpace
  inputOutputLinearization : Prop
  zeroDynamicsStable : Prop

structure FeedbackLinearizationEvidence {α : Type u} {S : ChaosControlSystem α}
    (F : FeedbackLinearizationPackage S) where
  diffeomorphismInvertible : ∃ g : S.stateSpace → S.stateSpace, ∀ x, g (F.diffeomorphism x) = x
  inputOutputLinearizationClosed : F.inputOutputLinearization
  zeroDynamicsStableClosed : F.zeroDynamicsStable

def FeedbackLinearizationClosed {α : Type u} {S : ChaosControlSystem α}
    (F : FeedbackLinearizationPackage S) : Prop :=
  F.inputOutputLinearization ∧ F.zeroDynamicsStable

theorem feedback_linearization_closed_from_evidence {α : Type u} {S : ChaosControlSystem α}
    (F : FeedbackLinearizationPackage S) (E : FeedbackLinearizationEvidence F) :
    FeedbackLinearizationClosed F := by
  exact And.intro E.inputOutputLinearizationClosed E.zeroDynamicsStableClosed

end ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean
end HautevilleHouse