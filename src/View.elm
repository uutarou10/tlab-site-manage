module View exposing (..)

import Articles.View
import Html exposing (..)
import Messages exposing (Msg(..))
import Model exposing (Model)


view : Model -> Html Msg
view model =
    div [] [ articles model ]


articles : Model -> Html Msg
articles model =
    Html.map ArticleMsg <| Articles.View.view model.articles
