let CVPage = ../CVPage.dhall

let CVSection = ../CVSection.dhall

let CVSectionFunctor = ../CVSection/functor.dhall

let Functor = (../../prelude.dhall).Functor

let list = (../../prelude.dhall).list

in    { map =
          \(a : Type) ->
          \(b : Type) ->
          \(f : a -> b) ->
          \(page : CVPage a) ->
            { title = page.title
            , subtitle = page.subtitle
            , links = f page.links
            , sections =
                list.map
                  (CVSection a)
                  (CVSection b)
                  (CVSectionFunctor.map a b f)
                  page.sections
            , lastModified = page.lastModified
            }
      }
    : Functor CVPage
