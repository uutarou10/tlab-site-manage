module Articles.Model exposing (..)


type alias Article =
    { id : Int
    , title : String
    , body : String
    , user_id : Int
    , created_at : String
    }


type alias Editor =
    { draftTitle : String
    , draftBody : String
    }


type alias Model =
    { articles : List Article
    , editor : Editor
    }


initialModel : Model
initialModel =
    { articles = []
    , editor = Editor "" ""
    }
