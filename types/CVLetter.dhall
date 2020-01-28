  λ(a : Type)
→ { subtitle :
      Optional Text
  , headerSpacing :
      Optional Double
  , theme :
      Optional ./CVTheme.dhall
  , margin :
      Optional Double
  , leaderHeader :
      ./CVLetterHeader.dhall a
  , body :
      a
  }
