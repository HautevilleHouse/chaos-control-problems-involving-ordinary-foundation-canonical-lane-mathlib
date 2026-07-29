import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean

structure BarbashinKrasovskiiPackage where
  lyapunovCandidate : Type u
  negativeDefiniteDerivative : Prop
  radialUnboundedness : Prop
  asymptoticStability : Prop

def BarbashinKrasovskiiClosed (B : BarbashinKrasovskiiPackage) : Prop :=
  B.negativeDefiniteDerivative ∧ B.radialUnboundedness ∧ B.asymptoticStability

end ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean
end HautevilleHouse