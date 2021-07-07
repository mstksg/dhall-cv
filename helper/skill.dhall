let types = ../types.dhall Text

let concatSep =
      https://raw.githubusercontent.com/dhall-lang/dhall-lang/v9.0.0/Prelude/Text/concatSep
        sha256:e4401d69918c61b92a4c0288f7d60a6560ca99726138ed8ebc58dca2cd205e58

in  λ(x : { subject : Text, skills : List Text }) →
      { desc = Some x.subject
      , body = types.CVLine.Simple (concatSep ", " x.skills)
      }
