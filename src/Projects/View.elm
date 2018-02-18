module Projects.View exposing (..)

import Html exposing (Html, div, img, table, tbody, td, text, th, thead, tr)
import Html.Attributes exposing (src)
import Projects.Messages exposing (Msg(..))
import Projects.Model exposing (..)


view : Model -> Html Msg
view projects =
    table []
        [ thead []
            [ tr []
                [ th []
                    [ text "アイコン" ]
                , th []
                    [ text "プロジェクト名" ]
                , th []
                    [ text "説明" ]
                , th []
                    [ text "RSSフィードURL" ]
                ]
            ]
        , tbody []
            (List.map row projects)
        ]


row : Project -> Html Msg
row project =
    tr []
        [ td []
            [ img [ src "https://pbs.twimg.com/media/C3_M1q1UMAAomzw.jpg:small" ] [] ]
        , td []
            [ text project.titile ]
        , td []
            [ text project.description ]
        , td []
            [ text project.feed_url ]
        ]
