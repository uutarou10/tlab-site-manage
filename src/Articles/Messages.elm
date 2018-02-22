module Articles.Messages exposing (..)

import Http
import Articles.Model exposing (Article)


type Msg
    = NoOp
    | OnInputTitle String
    | OnInputBody String
    | OnFetchAll (Result Http.Error (List Article))
