module View exposing (..)

import Articles.View
import Html exposing (..)
import Html.Attributes exposing (class, href)
import Messages exposing (Msg(..))
import Model exposing (Model)
import Projects.View
import Route exposing (Route(..))
import Users.View


view : Model -> Html Msg
view model =
    div [ class "section" ]
        [ div [ class "group" ]
            [ div [ class "grid" ]
                [ div [ class "col is-desktop-2" ] [ sidebar ]
                , div [ class "col is-desktop-10" ] [ page model ]
                ]
            ]
        ]


sidebar : Html Msg
sidebar =
    nav [ class "sidebar" ]
        [ ul []
            [ li []
                [ a [ href "#/" ] [ i [ class "fas fa-file-alt is-fit" ] [], span [ class "text" ] [ text "記事" ] ]
                ]
            , li []
                [ a [ href "#projects" ] [ i [ class "fas fa-clipboard is-fit" ] [], span [ class "text" ] [ text "プロジェクト管理" ] ]
                ]
            , li []
                [ a [ href "#users" ] [ i [ class "fas fa-users is-fit" ] [], span [ class "text" ] [ text "ユーザー管理" ] ]
                ]
            ]
        ]


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
