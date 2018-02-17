module Messages exposing (..)

import Articles.Messages
import Navigation exposing (Location)


type Msg
    = NoOp
    | ArticleMsg Articles.Messages.Msg
    | ChangeLocation Location
