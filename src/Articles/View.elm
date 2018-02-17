module Articles.View exposing (..)

import Articles.Messages exposing (Msg(..))
import Articles.Model exposing (Article, Model)
import Html exposing (Html, div, table, tbody, td, text, th, thead, tr)


view : Model -> Html Msg
view articles =
    table []
        [ thead []
            [ tr []
                [ th []
                    [ text "記事タイトル" ]
                , th []
                    [ text "作成者" ]
                , th []
                    [ text "作成日時" ]
                ]
            ]
        , tbody []
            (List.map row articles)
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
        ]
