let types = ../types.dhall Text

let text =
      https://raw.githubusercontent.com/dhall-lang/dhall-lang/v13.0.0/Prelude/Text/package.dhall sha256:0a0ad9f649aed94c2680491efb384925b5b2bb5b353f1b8a7eb134955c1ffe45

in    λ(c : types.CVCol)
    → merge
        { Simple =
            λ(b : Text) → "\\cvline{${text.default c.desc}} {${b}}"
        , Entry =
              λ(e : types.CVEntry)
            → ''
              \cventry{${text.default c.desc}}
                      {${e.title}}
                      {${text.default e.location}}
                      {${text.default e.grade}}
                      {}
                      {${text.default e.body}}
              ''
        }
        c.body
