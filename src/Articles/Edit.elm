module Articles.Edit exposing (..)

import Html exposing (div, text, Html)
import Articles.Messages exposing (Msg(..))
import Articles.Model exposing (Model, Article)
import Articles.Editor.Messages 
import Articles.Editor.View exposing (view)


view : Model -> Int -> Html Msg
view model article_id =
    Html.map Articles.Editor.Messages.Msg <| Articles.Editor.View.view model.editor