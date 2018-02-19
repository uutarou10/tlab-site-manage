module Users.Model exposing (..)


type alias User =
    { id : Int
    , email : String
    , name : String
    }


type alias Model =
    List User
