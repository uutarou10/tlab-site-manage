module Articles.Editor.Update exposing (..)

import Articles.Editor.Messages exposing (Msg(..))
import Articles.Editor.Model exposing (Model)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        OnChangeBody body ->
            { model | draftBody = body } ! []

        OnChangeTitle title ->
            { model | draftBody = title } ! []
