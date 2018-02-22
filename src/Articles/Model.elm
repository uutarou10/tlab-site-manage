module Articles.Model exposing (..)


type alias Article =
    { id : Int
    , title : String
    , body : String
    , user_id : Int
    , created_at : String
    }


type alias DraftArticle =
    { title : String
    , body : String
    }


type alias Model =
    { articles : List Article
    , draftArticle : DraftArticle
    }


initialModel : Model
initialModel =
    { articles = []
    , draftArticle = DraftArticle "" ""
    }
