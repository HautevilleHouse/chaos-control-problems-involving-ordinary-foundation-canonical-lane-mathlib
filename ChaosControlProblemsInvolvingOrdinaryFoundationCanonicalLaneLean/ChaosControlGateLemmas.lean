import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean

def gateClosed (A : PhaseSpaceAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : PhaseSpaceAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end HautevilleHouse
end ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean