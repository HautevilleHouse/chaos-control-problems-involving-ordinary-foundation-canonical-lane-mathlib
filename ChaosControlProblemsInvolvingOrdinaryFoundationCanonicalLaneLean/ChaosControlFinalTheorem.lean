import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean

def ConstrainedChaosControlClosure (A : PhaseSpaceAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_chaos_control_endgame (A : PhaseSpaceAdmissibleClass) :
    ConstrainedChaosControlClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HautevilleHouse
end ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean