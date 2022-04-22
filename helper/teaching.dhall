let types = ../types.dhall

in  λ(a : Type) →
    λ(x : types.Teaching) →
      { desc = Some x.year
      , body =
          (types.CVLine a).Entry
            { title = x.course
            , institution = Some x.subject
            , location = Some x.institution
            , grade = None Text
            , body = None a
            }
      }
