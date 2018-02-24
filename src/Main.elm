module Main exposing (..)

import Articles.Commands exposing (fetchAll)
import Messages exposing (Msg(..))
import Model exposing (Model, initialModel)
import Navigation exposing (Location)
import Route exposing (parseLocation)
import Update exposing (update)
import View exposing (view)


init : Location -> ( Model, Cmd Msg )
init location =
    { initialModel | route = parseLocation location } ! [ Cmd.map ArticleMsg fetchAll ]


main : Program Never Model Msg
main =
    Navigation.program ChangeLocation
        { view = view
        , init = init
        , update = update
        , subscriptions = always Sub.none
        }
