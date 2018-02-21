module Model exposing (..)

import Articles.Model
import Projects.Model
import Route exposing (Route(..))
import Users.Model


type alias Model =
    { articles : Articles.Model.Model
    , projects : Projects.Model.Model
    , users : Users.Model.Model
    , route : Route
    }


initialModel : Model
initialModel =
    { articles = Articles.Model.initialModel
    , projects = [ Projects.Model.Project 1 "たいとる" "説明" "https://example.com/feed" "https://example.com" "https://example.com/icon.png" ]
    , users = [ Users.Model.User 1 "mail@example.com" "田胡研太郎" ]
    , route = Articles
    }
