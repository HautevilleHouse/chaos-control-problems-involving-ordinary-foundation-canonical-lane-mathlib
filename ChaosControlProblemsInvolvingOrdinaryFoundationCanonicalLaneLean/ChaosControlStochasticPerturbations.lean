import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean

structure StochasticPerturbationPackage where
  noiseCovariance : Type u
  driftEstimate : Type v
  samplePathIntegrability : Prop
  ergodicInvariant: Prop
  stationaryDistribution : Prop

structure StochasticPerturbationEvidence (S : StochasticPerturbationPackage) where
  samplePathIntegrabilityClosed : S.samplePathIntegrability
  ergodicInvariantClosed : S.ergodicInvariant
  stationaryDistributionClosed : S.stationaryDistribution

def StochasticPerturbationClosed (S : StochasticPerturbationPackage) : Prop :=
  S.samplePathIntegrability ∧ S.ergodicInvariant ∧ S.stationaryDistribution

theorem stochastic_perturbation_closed_from_evidence (S : StochasticPerturbationPackage)
    (E : StochasticPerturbationEvidence S) : StochasticPerturbationClosed S := by
  exact And.intro E.samplePathIntegrabilityClosed
    (And.intro E.ergodicInvariantClosed E.stationaryDistributionClosed)

end HautevilleHouse
end ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean