-- | Takes a list of skills (as markdown), intercalates them with commas.
let types = ../types.dhall

let text = (../prelude.dhall).text

let list = (../prelude.dhall).list

in  λ(x : { subject : Text, skills : List types.Markdown }) →
      { desc = Some x.subject
      , body =
          (types.CVLine types.Markdown).Simple
            { rawMarkdown =
                text.concatMapSep
                  ", "
                  types.Markdown
                  (λ(s : types.Markdown) → s.rawMarkdown)
                  x.skills
            }
      }
