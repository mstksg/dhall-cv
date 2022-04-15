let CVSection = ../CVSection.dhall

let CVCol = ../CVCol.dhall

let CVColFunctor = ../CVCol/functor.dhall

let Functor = (../../prelude.dhall).Functor

let list = (../../prelude.dhall).list

in    { map =
          \(a : Type) ->
          \(b : Type) ->
          \(f : a -> b) ->
          \(section : CVSection a) ->
            { title = section.title
            , contents =
                list.map
                  (CVCol a)
                  (CVCol b)
                  (CVColFunctor.map a b f)
                  section.contents
            }
      }
    : Functor CVSection
