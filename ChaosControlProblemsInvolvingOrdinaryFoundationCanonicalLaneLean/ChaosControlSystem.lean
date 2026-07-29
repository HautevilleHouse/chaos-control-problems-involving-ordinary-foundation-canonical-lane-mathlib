import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean

structure ChaosControlSystem (α : Type u) where
  stateSpace : Type v
  controlSpace : Type w
  dynamics : stateSpace → controlSpace → stateSpace
  ordinaryFoundation : Prop
  stabilityMargin : ℝ
  orbitBoundedness : Prop
  sensitivityBound : ℝ

structure ChaosControlSystemEvidence (S : ChaosControlSystem) where
  ordinaryFoundationClosed : S.ordinaryFoundation
  stabilityMarginPositive : S.stabilityMargin > 0
  orbitBoundednessClosed : S.orbitBoundedness
  sensitivityBoundFinite : S.sensitivityBound < ∞

def ChaosControlSystemClosed (S : ChaosControlSystem) : Prop :=
  S.ordinaryFoundation ∧ S.stabilityMargin > 0 ∧ S.orbitBoundedness ∧ S.sensitivityBound < ∞

theorem chaos_control_system_closed_from_evidence (S : ChaosControlSystem)
    (E : ChaosControlSystemEvidence S) : ChaosControlSystemClosed S := by
  exact And.intro E.ordinaryFoundationClosed
    (And.intro E.stabilityMarginPositive
      (And.intro E.orbitBoundednessClosed E.sensitivityBoundFinite))

end ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean
end HautevilleHouse