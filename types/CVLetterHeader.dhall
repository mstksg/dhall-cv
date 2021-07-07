λ(a : Type) →
  { recipient : { name : Text, address : Text }
  , date : Text
  , opening : a
  , closing : a
  , enclosure : { type : Optional Text, description : Text }
  }
