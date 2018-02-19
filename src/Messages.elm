module Messages exposing (..)

import Articles.Messages
import Navigation exposing (Location)
import Projects.Messages
import Users.Messages


type Msg
    = NoOp
    | ArticleMsg Articles.Messages.Msg
    | ProjectMsg Projects.Messages.Msg
    | UsersMsg Users.Messages.Msg
    | ChangeLocation Location
