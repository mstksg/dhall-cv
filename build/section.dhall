let types = ../types.dhall Text

let text =
      https://raw.githubusercontent.com/dhall-lang/dhall-lang/v13.0.0/Prelude/Text/package.dhall sha256:0a0ad9f649aed94c2680491efb384925b5b2bb5b353f1b8a7eb134955c1ffe45

let mkBody = text.concatMapSep "\n" types.CVCol ./col.dhall

in    λ(section : types.CVSection)
    → ''
      \section{${text.default section.title}}"
      ${mkBody section.contents}
      ''
