let types = ../types.dhall Text

let map =
      https://raw.githubusercontent.com/dhall-lang/dhall-lang/v13.0.0/Prelude/List/map
        sha256:dd845ffb4568d40327f2a817eb42d1c6138b929ca758d50bc33112ef3c885680

let noTitle = λ(x : Text) → { desc = None Text, body = types.CVLine.Simple x }

in  { mkTeaching = ./teaching.dhall
    , mkSkill = ./skill.dhall
    , mkPublication = ./publication.dhall
    , mkTeachings = map types.Teaching types.CVCol ./teaching.dhall
    , mkSkills =
        map { subject : Text, skills : List Text } types.CVCol ./skill.dhall
    , mkPublications = map types.Publication types.CVCol ./publication.dhall
    , noTitle
    , noTitles = map Text types.CVCol noTitle
    }
