module View exposing (..)

import Articles.View
import Html exposing (..)
import Messages exposing (Msg(..))
import Model exposing (Model)
import Projects.View


view : Model -> Html Msg
view model =
    div []
        [ articles model
        , projects model
        ]


articles : Model -> Html Msg
articles model =
    Html.map ArticleMsg <| Articles.View.view model.articles


projects : Model -> Html Msg
projects model =
    Html.map ProjectMsg <| Projects.View.view model.projects
