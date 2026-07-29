import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean.ChaosControlSystem

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean

structure StabilizationPackage {α : Type u} (S : ChaosControlSystem α) where
  lyapunovFunction : S.stateSpace → ℝ
  lyapunovStable : ∀ x, S.stabilityMargin > 0 → lyapunovFunction x ≥ 0
  feedbackControl : S.controlSpace → S.controlSpace
  closedLoopStable : Prop

structure StabilizationEvidence {α : Type u} {S : ChaosControlSystem α}
    (P : StabilizationPackage S) where
  lyapunovStableClosed : P.lyapunovStable
  feedbackControlWellDefined : ∀ u : S.controlSpace, P.feedbackControl u ∈ S.controlSpace
  closedLoopStableClosed : P.closedLoopStable

def StabilizationClosed {α : Type u} {S : ChaosControlSystem α}
    (P : StabilizationPackage S) : Prop :=
  P.lyapunovStable ∧ P.closedLoopStable

theorem stabilization_closed_from_evidence {α : Type u} {S : ChaosControlSystem α}
    (P : StabilizationPackage S) (E : StabilizationEvidence P) : StabilizationClosed P := by
  exact And.intro E.lyapunovStableClosed E.closedLoopStableClosed

end ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean
end HautevilleHouse