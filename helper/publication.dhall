let types = ../types.dhall Text

let Optional/map =
      https://raw.githubusercontent.com/dhall-lang/dhall-lang/v20.2.0/Prelude/Optional/map
        sha256:501534192d988218d43261c299cc1d1e0b13d25df388937add784778ab0054fa

let concatSep =
      https://raw.githubusercontent.com/dhall-lang/dhall-lang/v20.2.0/Prelude/Text/concatSep
        sha256:e4401d69918c61b92a4c0288f7d60a6560ca99726138ed8ebc58dca2cd205e58

in  λ(x : types.Publication) →
      { desc = Some x.subject
      , body =
          types.CVLine.Entry
            { title = x.author
            , institution =
                Optional/map (List Text) Text (concatSep ", ") x.secondary
            , location = Some ("\"" ++ x.title ++ "\"")
            , grade = None Text
            , body = Some (x.journal ++ " (" ++ x.year ++ ")")
            }
      }
