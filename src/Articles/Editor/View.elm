module Articles.Editor.View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class, placeholder, type_)
import Articles.Editor.Model exposing (Model)
import Articles.Editor.Messages exposing (Msg(..))


view : Model -> Html Msg
view model =
    div [ class "editor group" ]
        [ div [ class "grid" ]
            [ div [ class "col is-mobile-9" ]
                [ div [ class "form" ]
                    [ div [ class "field" ]
                        [ input [ type_ "text", placeholder "Title", class "input is-mobile-full" ] []
                        , textarea [ class "textarea is-mobile-full", placeholder "本文を入力..." ] []
                        ]
                    , div [ class "btns" ]
                        [ a [ class "btn is-plain is-primary is-round" ] [ text "投稿" ] ]
                    ]
                ]
            , div [ class "col is-mobile-3" ] [ text "そのうち画像アップロードとかできるようになったらいいなぁという願いが込められている" ]
            ]
        ]
