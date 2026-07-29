import ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean.TheoreticalFramework

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean

structure BifurcationPackage {F : ChaosControlOrdinaryFoundationFramework} where
  parameterSpace : Type u
  bifurcationDiagram : Prop
  stabilityTransition : Prop
  chaosOnset : Prop

structure BifurcationEvidence {F : ChaosControlOrdinaryFoundationFramework}
    (B : BifurcationPackage F) where
  bifurcationDiagramClosed : B.bifurcationDiagram
  stabilityTransitionClosed : B.stabilityTransition
  chaosOnsetClosed : B.chaosOnset

def BifurcationClosed {F : ChaosControlOrdinaryFoundationFramework}
    (B : BifurcationPackage F) : Prop :=
  B.bifurcationDiagram ∧ B.stabilityTransition ∧ B.chaosOnset

theorem bifurcation_closed_from_evidence
    {F : ChaosControlOrdinaryFoundationFramework}
    (B : BifurcationPackage F) (E : BifurcationEvidence B) :
    BifurcationClosed B := by
  exact And.intro E.bifurcationDiagramClosed
    (And.intro E.stabilityTransitionClosed E.chaosOnsetClosed)

end ChaosControlProblemsInvolvingOrdinaryFoundationCanonicalLaneLean
end HautevilleHouse