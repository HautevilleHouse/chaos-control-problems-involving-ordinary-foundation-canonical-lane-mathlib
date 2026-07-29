import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean

structure ControlLiapunovFunctionPackage where
  systemDynamics : Prop
  controlLaw : Prop
  liapunovExists : Prop
  derivativeInequality : Prop
  stabilityDomain : Prop

structure ControlLiapunovFunctionEvidence (C : ControlLiapunovFunctionPackage) where
  systemDynamicsClosed : C.systemDynamics
  controlLawClosed : C.controlLaw
  liapunovExistsClosed : C.liapunovExists
  derivativeInequalityClosed : C.derivativeInequality
  stabilityDomainClosed : C.stabilityDomain

def ControlLiapunovFunctionClosed (C : ControlLiapunovFunctionPackage) : Prop :=
  C.systemDynamics ∧ C.controlLaw ∧ C.liapunovExists ∧ C.derivativeInequality ∧ C.stabilityDomain

theorem control_liapunov_function_closed_from_evidence
    (C : ControlLiapunovFunctionPackage) (E : ControlLiapunovFunctionEvidence C) :
    ControlLiapunovFunctionClosed C := by
  exact And.intro E.systemDynamicsClosed
    (And.intro E.controlLawClosed
      (And.intro E.liapunovExistsClosed
        (And.intro E.derivativeInequalityClosed E.stabilityDomainClosed)))

end ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean
end HautevilleHouse