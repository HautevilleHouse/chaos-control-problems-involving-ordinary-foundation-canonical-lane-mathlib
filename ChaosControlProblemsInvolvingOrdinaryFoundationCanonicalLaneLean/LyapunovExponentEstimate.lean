import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean

structure LyapunovExponentEstimatePackage where
  variationalEquation : Prop
  exponentialGrowthRate : Prop
  largestLyapunovComputed : Prop
  uncertaintyQuantified : Prop

def LyapunovExponentEstimateClosed (L : LyapunovExponentEstimatePackage) : Prop :=
  L.variationalEquation ∧ L.exponentialGrowthRate ∧ L.largestLyapunovComputed ∧ L.uncertaintyQuantified

end ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean
end HautevilleHouse
