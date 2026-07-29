import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean

def bridgeClosed (A : PhaseSpaceAdmissibleClass) : Prop :=
  orbitStable A.object.space

theorem bridge_from_admissible_class (A : PhaseSpaceAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end HautevilleHouse
end ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean