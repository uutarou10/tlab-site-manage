module Articles.Update exposing (..)

import Articles.Messages exposing (Msg(..))
import Articles.Model exposing (Model)
import Articles.Editor.Update


update : Msg -> Model -> ( Model, Cmd msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )

        EditorMsg submsg ->
            let
                ( newEditorModel, cmd ) =
                    Articles.Editor.Update.update submsg model.editor
            in
                { model | editor = newEditorModel } ! []

        OnFetchAll (Ok newArticles) ->
            ( { model | articles = newArticles }, Cmd.none )

        OnFetchAll (Err error) ->
            ( model, Cmd.none )
