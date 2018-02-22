module Articles.Edit exposing (..)

import Html exposing (div, text, Html)
import Articles.Messages exposing (Msg(..))
import Articles.Model exposing (Model, Article)


view : Model -> Int -> Html Msg
view model article_id =
    text "hoge"
