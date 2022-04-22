let types = ../types.dhall Text

let list = (../prelude.dhall).list

let noTitle = λ(x : Text) → { desc = None Text, body = types.CVLine.Simple x }

in  { mkTeaching = ./teaching.dhall
    , mkSkill = ./skill.dhall
    , mkPublication = ./publication.dhall
    , mkTeachings = list.map types.Teaching types.CVCol ./teaching.dhall
    , mkSkills =
        list.map
          { subject : Text, skills : List Text }
          types.CVCol
          ./skill.dhall
    , mkPublications =
        list.map types.Publication types.CVCol ./publication.dhall
    , noTitle
    , noTitles = list.map Text types.CVCol noTitle
    , markdown = λ(markdown : Text) → { markdown }
    }
