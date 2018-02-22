module View exposing (..)

import Articles.List
import Html exposing (..)
import Html.Attributes exposing (class, href)
import Messages exposing (Msg(..))
import Model exposing (Model)
import Projects.View
import Route exposing (Route(..))
import Users.View
import Articles.Edit


view : Model -> Html Msg
view model =
    div [ class "section" ]
        [ div [ class "group" ]
            [ div [ class "grid" ]
                [ div [ class "col is-desktop-2" ] [ sidebar ]
                , div [ class "col is-desktop-10" ]
                    [ div [ class "content" ] [ page model ]
                    ]
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

            Article id ->
                article model id

            Users ->
                users model

            NotFound ->
                notFound


articles : Model -> Html Msg
articles model =
    Html.map ArticleMsg <| Articles.List.view model.articles


article : Model -> Int -> Html Msg
article model id =
    let
        maybeArticle =
            List.filter (\a -> a.id == id) model.articles.articles
                |> List.head
    in
        case maybeArticle of
            Just article ->
                Html.map ArticleMsg <| Articles.Edit.view model.articles article

            Nothing ->
                text "nothing"


projects : Model -> Html Msg
projects model =
    Html.map ProjectMsg <| Projects.View.view model.projects


users : Model -> Html Msg
users model =
    Html.map UsersMsg <| Users.View.view model.users


notFound : Html Msg
notFound =
    text "Not Found!!"
