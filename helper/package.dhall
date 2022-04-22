let types = ../types.dhall

let list = (../prelude.dhall).list

let noTitle =
      λ(a : Type) →
      λ(x : a) →
        { desc = None Text, body = (types.CVLine a).Simple x }

let rawMarkdown = λ(rawMarkdown : Text) → { rawMarkdown }

let getRawMarkdown = λ(x : types.Markdown) → x.rawMarkdown

in  { mkTeaching = ./teaching.dhall
    , mkSkill = ./skill.dhall
    , mkPublication = ./publication.dhall
    , mkTeachings =
        λ(a : Type) →
          list.map types.Teaching (types.CVCol a) (./teaching.dhall a)
    , mkSkills =
        list.map
          { subject : Text, skills : List types.Markdown }
          (types.CVCol types.Markdown)
          ./skill.dhall
    , mkPublications =
        list.map
          types.Publication
          (types.CVCol types.Markdown)
          ./publication.dhall
    , noTitle
    , noTitles = λ(a : Type) → list.map a (types.CVCol a) (noTitle a)
    , rawMarkdown
    , rawMarkdowns = list.map Text types.Markdown rawMarkdown
    , getRawMarkdown
    , getRawMarkdowns = list.map types.Markdown Text getRawMarkdown
    }
