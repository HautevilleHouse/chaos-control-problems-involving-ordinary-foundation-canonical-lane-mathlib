import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean.ChaosControlSystem

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean

structure ObserverDesignPackage {α : Type u} (S : ChaosControlSystem α) where
  observerState : Type v
  observerDynamics : S.controlSpace → S.stateSpace → observerState → observerState
  innovationGain : ℝ
  asymptoticConvergence : Prop

structure ObserverDesignEvidence {α : Type u} {S : ChaosControlSystem α}
    (O : ObserverDesignPackage S) where
  observerDynamicsConsistent : ∀ u x z, S.dynamics x u = O.observerDynamics u x z
  innovationGainPositive : O.innovationGain > 0
  asymptoticConvergenceClosed : O.asymptoticConvergence

def ObserverDesignClosed {α : Type u} {S : ChaosControlSystem α}
    (O : ObserverDesignPackage S) : Prop :=
  O.asymptoticConvergence ∧ O.innovationGain > 0

theorem observer_design_closed_from_evidence {α : Type u} {S : ChaosControlSystem α}
    (O : ObserverDesignPackage S) (E : ObserverDesignEvidence O) : ObserverDesignClosed O := by
  exact And.intro E.asymptoticConvergenceClosed E.innovationGainPositive

end ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean
end HautevilleHouse