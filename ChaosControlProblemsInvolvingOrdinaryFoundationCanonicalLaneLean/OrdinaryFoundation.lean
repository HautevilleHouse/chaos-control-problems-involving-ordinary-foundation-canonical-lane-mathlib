import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean

structure OrdinaryFoundationPackage where
  baseMeasure : Type u
  transitionKernel : Type v
  markovProperty : Prop
  ergodicity : Prop
  mixingRate : ℝ

structure OrdinaryFoundationEvidence (O : OrdinaryFoundationPackage) where
  markovPropertyClosed : O.markovProperty
  ergodicityClosed : O.ergodicity
  mixingRatePositive : O.mixingRate > 0

def OrdinaryFoundationClosed (O : OrdinaryFoundationPackage) : Prop :=
  O.markovProperty ∧ O.ergodicity ∧ O.mixingRate > 0

theorem ordinary_foundation_closed_from_evidence (O : OrdinaryFoundationPackage)
    (E : OrdinaryFoundationEvidence O) : OrdinaryFoundationClosed O := by
  exact And.intro E.markovPropertyClosed
    (And.intro E.ergodicityClosed E.mixingRatePositive)

end ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean
end HautevilleHouse