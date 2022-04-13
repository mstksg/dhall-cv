λ(a : Type) →
  { subtitle : Optional Text
  , info : ./CVInfo.dhall
  , sections : List (./CVSection.dhall a)
  }
