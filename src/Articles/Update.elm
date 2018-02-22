module Articles.Update exposing (..)

import Articles.Messages exposing (Msg(..))
import Articles.Model exposing (Model)


update : Msg -> Model -> ( Model, Cmd msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )

        OnInputBody body ->
            { model | draftBody = body } ! []

        OnInputTitle title ->
            { model | draftTitle = title } ! []
        
        InitEditorView article ->
            { model | draftTitle = article.title, draftBody = article.body} ! []

        OnFetchAll (Ok newArticles) ->
            ( { model | articles = newArticles }, Cmd.none )

        OnFetchAll (Err error) ->
            ( model, Cmd.none )
