module Articles.Messages exposing (..)

import Http
import Articles.Model exposing (Article)


type Msg
    = NoOp
    | ChangeTitle String
    | ChangeBody String
    | OnFetchAll (Result Http.Error (List Article))
