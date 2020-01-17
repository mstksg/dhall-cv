let types = ../types.dhall Text

let Optional/map =
      https://raw.githubusercontent.com/dhall-lang/dhall-lang/v13.0.0/Prelude/Optional/map sha256:e7f44219250b89b094fbf9996e04b5daafc0902d864113420072ae60706ac73d

let concatSep =
      https://raw.githubusercontent.com/dhall-lang/dhall-lang/v13.0.0/Prelude/Text/concatSep sha256:e4401d69918c61b92a4c0288f7d60a6560ca99726138ed8ebc58dca2cd205e58

in    λ(x : types.Publication)
    → { desc =
          Some x.subject
      , body =
          types.CVLine.Entry
            { title =
                x.author
            , institution =
                Optional/map (List Text) Text (concatSep ", ") x.secondary
            , location =
                Some ("\"" ++ x.title ++ "\"")
            , grade =
                None Text
            , body =
                Some (x.journal ++ " (" ++ x.year ++ ")")
            }
      }
