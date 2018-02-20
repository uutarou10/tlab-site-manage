module View exposing (..)

import Articles.View
import Html exposing (..)
import Messages exposing (Msg(..))
import Model exposing (Model)
import Projects.View
import Route exposing (Route(..))
import Users.View


view : Model -> Html Msg
view model =
    div [] [ page model ]


page : Model -> Html Msg
page model =
    let
        currentRoute =
            model.route
    in
    case currentRoute of
        Projects ->
            projects model

        Articles ->
            articles model

        Users ->
            users model

        NotFound ->
            text "Not found"


articles : Model -> Html Msg
articles model =
    Html.map ArticleMsg <| Articles.View.view model.articles


projects : Model -> Html Msg
projects model =
    Html.map ProjectMsg <| Projects.View.view model.projects


users : Model -> Html Msg
users model =
    Html.map UsersMsg <| Users.View.view model.users
