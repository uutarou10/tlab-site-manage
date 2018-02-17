module Main exposing (..)

import Messages exposing (Msg(..))
import Model exposing (Model, initialModel)
import Navigation exposing (Location)
import Update exposing (update)
import View exposing (view)


init : Location -> ( Model, Cmd Msg )
init location =
    ( initialModel, Cmd.none )


main : Program Never Model Msg
main =
    Navigation.program ChangeLocation
        { view = view
        , init = init
        , update = update
        , subscriptions = always Sub.none
        }
