module Articles.Messages exposing (..)

import Http
import Articles.Model exposing (Article)
import Articles.Editor.Messages


type Msg
    = NoOp
    | EditorMsg Articles.Editor.Messages.Msg
    | OnFetchAll (Result Http.Error (List Article))
