import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean

structure OttGrebogiYorkeControlPackage where
  accessibleUnstablePeriodicOrbit : Prop
  perturbationDirectionChosen : Prop
  controlPerturbationApplied : Prop
  orbitStabilized : Prop

def OttGrebogiYorkeControlClosed (O : OttGrebogiYorkeControlPackage) : Prop :=
  O.accessibleUnstablePeriodicOrbit ∧ O.perturbationDirectionChosen ∧ O.controlPerturbationApplied ∧ O.orbitStabilized

end ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean
end HautevilleHouse
