(* ::Package:: *)

(************************************************************************)
(* This file was generated automatically by the Mathematica front end.  *)
(* It contains Initialization cells from a Notebook file, which         *)
(* typically will have the same name as this file except ending in      *)
(* ".nb" instead of ".m".                                               *)
(*                                                                      *)
(* This file is intended to be loaded into the Mathematica kernel using *)
(* the package loading commands Get or Needs.  Doing so is equivalent   *)
(* to using the Evaluate Initialization Cells menu command in the front *)
(* end.                                                                 *)
(*                                                                      *)
(* DO NOT EDIT THIS FILE.  This entire file is regenerated              *)
(* automatically each time the parent Notebook file is saved in the     *)
(* Mathematica front end.  Any changes you make to this file will be    *)
(* overwritten.                                                         *)
(************************************************************************)



BeginPackage["GMFormats`"]


ShowStep::usage="ShowStep[exp,listfun] (dynamic) gives a grid of calculations on exp and updates listfun with an inputform";
ShowIncrementalCalc::usage="ShowIncrementalCalc[exp,listfun] (not dynamic) gives a grid of Incremental calculations";
FoldOut::usage="FoldOut[] folds the cell and selects it";
IF::usage="InputForm"
FF::usage="FullForm"


Begin["`Private`"]


FoldOut[]:=(If[$FrontEnd=!=$Failed,SelectionMove[EvaluationNotebook[],All,EvaluationCell];
FrontEndTokenExecute["SelectionCloseUnselectedCells"]])


IF=InputForm;FF=FullForm;


IncrementalCalc[exp_,listfun_]:=Inner[{#1,#2}&,{"Id"}~Join~listfun,ComposeList[listfun,exp],List];
ShowIncrementalCalc[exp_,listfun_]:=Grid[IncrementalCalc[exp,listfun],ItemStyle->{{"Input","Output"},Automatic},Frame->All];


Attributes[GridCalcsFuns]={HoldAll};
GridCalcsFuns[listcalc_,listfun_]:=
Grid[Inner[{#1,#2}&,{"Id"}~Join~listfun,listcalc,List],ItemStyle->{{"Input","Output"},Automatic},Frame->All];


Attributes[AppendCalcsFuns]={HoldAll};
AppendCalcsFuns[listcalc_,listfun_]:=Grid[{{
InputField[
Dynamic[Null,
{AppendTo[listfun,#],
AppendTo[listcalc,#[Last[listcalc]]]
}&]
]
,
Button["Go Back",If[Length[listfun]>1,listcalc=Drop[listcalc,-1];listfun=Drop[listfun,-1]]]
}}];


Attributes[ShowStep]={HoldAll};
ShowStep[exp_,listfun_]:=DynamicModule[{listcalc=ScreenDollarIndices/@ComposeList[listfun,exp]},
Column[{Dynamic[GridCalcsFuns[listcalc,listfun]],
AppendCalcsFuns[listcalc,listfun]}]
]


End[];
EndPackage[];
