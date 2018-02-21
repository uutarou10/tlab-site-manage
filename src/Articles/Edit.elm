module Articles.Edit exposing (..)

import Html exposing (div, text, Html)
import Html.Attributes exposing (class)
import Articles.Messages exposing (Msg(..))
import Articles.Model exposing (Model, Article)


view : Article -> Html Msg
view article =
    div []
        [ text article.title
        ]
