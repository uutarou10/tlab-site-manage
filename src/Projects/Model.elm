module Projects.Model exposing (..)


type alias Project =
    { id : Int
    , titile : String
    , description : String
    , feed_url : String
    , url : String
    , icon_url : String
    }


type alias Model =
    List Project
