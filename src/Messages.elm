module Messages exposing (..)

import Articles.Messages
import Navigation exposing (Location)
import Projects.Messages


type Msg
    = NoOp
    | ArticleMsg Articles.Messages.Msg
    | ProjectMsg Projects.Messages.Msg
    | ChangeLocation Location
