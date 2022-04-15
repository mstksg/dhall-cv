let CVLetter = ../CVLetter.dhall

let CVLetterheader = ../CVLetterHeader.dhall

let CVLetterHeaderFunctor = ../CVLetterHeader/functor.dhall

let Functor = (../../prelude.dhall).Functor

in    { map =
          \(a : Type) ->
          \(b : Type) ->
          \(f : a -> b) ->
          \(letter : CVLetter a) ->
            { header = CVLetterHeaderFunctor.map a b f letter.header
            , body = f letter.body
            , info = letter.info
            }
      }
    : Functor CVLetter
