module Projects.Update exposing (..)

import Projects.Messages exposing (Msg(..))
import Projects.Model exposing (Model)


update : Msg -> Model -> ( Model, Cmd msg )
update msg model =
    case msg of
        NoOp ->
            model ! []
