let CVLetterHeader = ../CVLetterHeader.dhall

let Functor = (../../prelude.dhall).Functor

in    { map =
          \(a : Type) ->
          \(b : Type) ->
          \(f : a -> b) ->
          \(header : CVLetterHeader a) ->
            { recipient = header.recipient
            , date = header.date
            , opening = f header.opening
            , closing = f header.closing
            , enclosure = header.enclosure
            }
      }
    : Functor CVLetterHeader
