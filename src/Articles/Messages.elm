module Articles.Messages exposing (..)

import Http
import Articles.Model exposing (Article)


type Msg
    = NoOp
    | OnFetchAll (Result Http.Error (List Article))
