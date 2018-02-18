module Model exposing (..)

import Articles.Model
import Projects.Model


type alias Model =
    { articles : Articles.Model.Model
    , projects : Projects.Model.Model
    }


initialModel : Model
initialModel =
    { articles = [ Articles.Model.Article 1 "記事タイトル" "これが記事本文です。Hello!" 1 "2018/02/02 03:03:00" ]
    , projects = [ Projects.Model.Project 1 "たいとる" "説明" "https://example.com/feed" "https://example.com" "https://example.com/icon.png" ]
    }
