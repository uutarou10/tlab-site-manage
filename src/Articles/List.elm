module Articles.List exposing (..)

import Articles.Messages exposing (Msg(..))
import Articles.Model exposing (Article, Model)
import Html exposing (Html, div, table, tbody, td, text, th, thead, tr, button, a)
import Html.Attributes exposing (class, href)


view : Model -> Html Msg
view articles =
    div []
        [ div [ class "btns" ]
            [ a [ class "btn is-plain is-round is-primary new-btn" ] [ text "新規作成" ]
            ]
        , table [ class "table is-boarder is-middle" ]
            [ thead []
                [ tr []
                    [ th []
                        [ text "記事タイトル" ]
                    , th []
                        [ text "作成者" ]
                    , th []
                        [ text "作成日時" ]
                    , th [] []
                    ]
                ]
            , tbody []
                (List.map row articles)
            ]
        ]


row : Article -> Html Msg
row article =
    tr []
        [ td []
            [ text article.title ]
        , td []
            [ text <| toString article.user_id ]
        , td []
            [ text article.created_at ]
        , td [ class "btns is-center" ]
            [ a [ class "btn is-plain is-round is-primary", href <| "#/articles/" ++ (toString article.id) ] [ text "編集" ]
            , a [ class "btn is-plain is-round is-danger", href "#" ] [ text "削除" ]
            ]
        ]
