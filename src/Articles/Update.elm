module Articles.Update exposing (..)

import Articles.Messages exposing (Msg(..))
import Articles.Model exposing (Model)


update : Msg -> Model -> ( Model, Cmd msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )
