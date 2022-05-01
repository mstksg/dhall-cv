-- | Also some tools on generating a cover letter
λ(a : Type) →
  { header : ./CVLetterHeader.dhall a, body : a, info : ./CVInfo.dhall }
