  λ(a : Type)
→ { headerSpacing : Optional Double
  , theme : Optional ./CVTheme.dhall
  , margin : Optional Double
  , header : ./CVLetterHeader.dhall a
  , body : a
  , info : ./CVInfo.dhall
  }
