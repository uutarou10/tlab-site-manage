module Articles.Edit exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class, type_, placeholder, value)
import Html.Events exposing (onInput)
import Articles.Messages exposing (Msg(..))
import Articles.Model exposing (Model, Article)


view : Model -> Article -> Html Msg
view model article =
    div [ class "editor group" ]
        [ div [ class "grid" ]
            [ div [ class "col is-mobile-9" ]
                [ div [ class "form" ]
                    [ div [ class "field" ]
                        [ input [ type_ "text", placeholder "Title", class "input is-mobile-full", onInput OnInputTitle ] [ text model.draftTitle ]
                        , textarea [ class "textarea is-mobile-full", placeholder "本文を入力...", onInput OnInputBody, value model.draftBody ] []
                        ]
                    , div [ class "btns" ]
                        [ a [ class "btn is-plain is-primary is-round" ] [ text "投稿" ] ]
                    ]
                ]
            , div [ class "col is-mobile-3" ] [ text "そのうち画像アップロードとかできるようになったらいいなぁという願いが込められている" ]
            ]
        ]
