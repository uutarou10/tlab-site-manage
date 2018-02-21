module Articles.Update exposing (..)

import Articles.Messages exposing (Msg(..))
import Articles.Model exposing (Model)


update : Msg -> Model -> ( Model, Cmd msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )

        OnFetchAll (Ok newArticles) ->
            ( newArticles, Cmd.none )

        OnFetchAll (Err error) ->
            ( model, Cmd.none )
