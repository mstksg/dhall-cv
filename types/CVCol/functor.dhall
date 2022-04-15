let CVCol = ../CVCol.dhall

let CVLine = ../CVLine.dhall

let CVLineFunctor = ../CVLine/functor.dhall

let Functor = (../../prelude.dhall).Functor

in    { map =
          \(a : Type) ->
          \(b : Type) ->
          \(f : a -> b) ->
          \(col : CVCol a) ->
            { desc = col.desc, body = CVLineFunctor.map a b f col.body }
      }
    : Functor CVCol
