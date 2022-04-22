let types = ../types.dhall

let optional = (../prelude.dhall).optional

let text = (../prelude.dhall).text

in  λ(x : types.Publication) →
      { desc = Some x.subject
      , body =
          (types.CVLine types.Markdown).Entry
            { title = x.author
            , institution =
                optional.map (List Text) Text (text.concatSep ", ") x.secondary
            , location = Some ("\"" ++ x.title ++ "\"")
            , grade = None Text
            , body = Some { rawMarkdown = x.journal ++ " (" ++ x.year ++ ")" }
            }
      }
