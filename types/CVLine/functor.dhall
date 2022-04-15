let CVLine = ../CVLine.dhall

let CVEntry = ../CVEntry.dhall

let CVEntryFunctor = ../CVEntry/functor.dhall

let Functor = (../../prelude.dhall).Functor

in    { map =
          \(a : Type) ->
          \(b : Type) ->
          \(f : a -> b) ->
          \(line : CVLine a) ->
            merge
              { Simple = \(x : a) -> (CVLine b).Simple (f x)
              , Entry =
                  \(e : CVEntry a) ->
                    (CVLine b).Entry (CVEntryFunctor.map a b f e)
              }
              line
      }
    : Functor CVLine
