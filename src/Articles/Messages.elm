module Articles.Messages exposing (..)

import Http
import Articles.Model exposing (Model)


type Msg
    = NoOp
    | OnFetchAll (Result Http.Error Model)
