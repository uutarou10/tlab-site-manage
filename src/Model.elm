module Model exposing (..)

import Articles.Model


type alias Model =
    { articles : Articles.Model.Model
    }


initialModel : Model
initialModel =
    { articles = [ Articles.Model.Article 1 "記事タイトル" "これが記事本文です。Hello!" 1 "2018/02/02 03:03:00" ] }
