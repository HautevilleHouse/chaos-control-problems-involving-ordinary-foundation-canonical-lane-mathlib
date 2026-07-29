import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean

structure OdeControllabilityPackage where
  controllabilityMatrix : Prop
  rankCondition : Prop
  reachableSet : Prop
  controllabilityImpliesStabilizability : Prop
  controlInputBounds : Prop

structure OdeControllabilityEvidence (O : OdeControllabilityPackage) where
  controllabilityMatrixClosed : O.controllabilityMatrix
  rankConditionClosed : O.rankCondition
  reachableSetClosed : O.reachableSet
  controllabilityImpliesStabilizabilityClosed : O.controllabilityImpliesStabilizability
  controlInputBoundsClosed : O.controlInputBounds

def OdeControllabilityClosed (O : OdeControllabilityPackage) : Prop :=
  O.controllabilityMatrix ∧ O.rankCondition ∧ O.reachableSet ∧
  O.controllabilityImpliesStabilizability ∧ O.controlInputBounds

theorem ode_controllability_closed_from_evidence
    (O : OdeControllabilityPackage) (E : OdeControllabilityEvidence O) :
    OdeControllabilityClosed O := by
  exact And.intro E.controllabilityMatrixClosed
    (And.intro E.rankConditionClosed
      (And.intro E.reachableSetClosed
        (And.intro E.controllabilityImpliesStabilizabilityClosed E.controlInputBoundsClosed)))

end ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean
end HautevilleHouse