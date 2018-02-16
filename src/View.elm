module View exposing (..)

import Html exposing (..)
import Messages exposing (Msg(..))
import Model exposing (Model)


view : Model -> Html Msg
view model =
    div [] [ h1 [] [ text "Hello world" ] ]
