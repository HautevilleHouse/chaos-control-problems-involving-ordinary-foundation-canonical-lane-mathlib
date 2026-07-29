import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean

structure ControlSystemState where
  baseDynamics : Type u
  perturbationBounds : Type v
  admissibleSet : Prop
  orbitAttractor : Prop

def orbitStable (s : ControlSystemState) : Prop :=
  s.admissibleSet ∧ s.orbitAttractor

structure PhaseSpaceAdmittedObject where
  space : ControlSystemState
  reachableSet : Prop
  omegaLimitSet : Prop
  conclusion : omegaLimitSet

structure PhaseSpaceAdmissibleClass where
  object : PhaseSpaceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

definedAdmissibleClass (A : PhaseSpaceAdmissibleClass) : Prop :=
  orbitStable A.object.space ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end HautevilleHouse
end ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean