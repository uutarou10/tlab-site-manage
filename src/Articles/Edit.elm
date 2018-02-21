module Articles.Edit exposing (..)

import Html exposing (div, text, Html)
import Html.Attributes exposing (class)
import Articles.Messages exposing (Msg(..))
import Articles.Model exposing (Model, Article)
import Articles.Editor


view : Model -> Int -> Html Msg
view model article_id =
    Articles.Editor.view model article_id
