let types = ../types.dhall Text

in  λ(x : types.Teaching) →
      { desc = Some x.year
      , body =
          types.CVLine.Entry
            { title = x.course
            , institution = Some x.subject
            , location = Some x.institution
            , grade = None Text
            , body = None Text
            }
      }
