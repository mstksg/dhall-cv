let CVDocument = ../CVDocument.dhall

let CVSection = ../CVSection.dhall

let CVSectionFunctor = ../CVSection/functor.dhall

let Functor = (../../prelude.dhall).Functor

let list = (../../prelude.dhall).list

in    { map =
          \(a : Type) ->
          \(b : Type) ->
          \(f : a -> b) ->
          \(page : CVDocument a) ->
            { subtitle = page.subtitle
            , info = page.info
            , sections =
                list.map
                  (CVSection a)
                  (CVSection b)
                  (CVSectionFunctor.map a b f)
                  page.sections
            }
      }
    : Functor CVDocument
