module Users.View exposing (..)

import Html exposing (Html, div, table, tbody, td, text, th, thead, tr)
import Users.Messages exposing (Msg(..))
import Users.Model exposing (Model, User)


view : Model -> Html Msg
view users =
    table []
        [ thead []
            [ tr []
                [ th []
                    [ text "id" ]
                , th []
                    [ text "名前" ]
                , th []
                    [ text "Email" ]
                ]
            ]
        , tbody [] (List.map row users)
        ]


row : User -> Html Msg
row user =
    tr []
        [ td []
            [ text <| toString user.id ]
        , td []
            [ text user.name ]
        , td []
            [ text user.email ]
        ]
