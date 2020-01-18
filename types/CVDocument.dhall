  λ(a : Type)
→ { subtitle :
      Optional Text
  , headerSpacing :
      Optional Double
  , theme :
      Optional ./CVTheme.dhall
  , margin :
      Optional Double
  , info :
      ./CVInfo.dhall
  , sections :
      List (./CVSection.dhall a)
  }
