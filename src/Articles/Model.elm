module Articles.Model exposing (..)


type alias Article =
    { id : Int
    , title : String
    , body : String
    , user_id : Int
    , created_at : String
    }


type alias Model =
    { articles : List Article
    , draftTitle : String
    , draftBody : String
    }


initialModel : Model
initialModel =
    { articles = []
    , draftTitle = ""
    , draftBody = ""
    }
