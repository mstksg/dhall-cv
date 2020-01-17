  λ(a : Type)
→ { subtitle :
      Optional Text
  , headerSpacing :
      Optional Double
  , theme :
      Optional Text
  , margin :
      Optional Double
  , info :
      ./CVInfo.dhall
  , sections :
      List (./CVSection.dhall a)
  }
