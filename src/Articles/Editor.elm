module Articles.Editor exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Articles.Messages exposing (Msg(..))
import Articles.Model exposing (Model)


view : Model -> Int -> Html Msg
view model article_id =
    let
        title =
            model.draftTitle

        body =
            model.draftBody
    in
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
