module Users.Update exposing (..)

import Users.Messages exposing (Msg(..))
import Users.Model exposing (Model)


update : Msg -> Model -> ( Model, Cmd msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )
