let CVEntry = ../CVEntry.dhall

let Functor = (../../prelude.dhall).Functor

let optional = (../../prelude.dhall).optional

in    { map =
          \(a : Type) ->
          \(b : Type) ->
          \(f : a -> b) ->
          \(entry : CVEntry a) ->
            { title = entry.title
            , institution = entry.institution
            , location = entry.location
            , grade = entry.grade
            , body = optional.map a b f entry.body
            }
      }
    : Functor CVEntry
