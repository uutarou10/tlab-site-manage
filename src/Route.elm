module Route exposing (..)

import Navigation exposing (Location)
import UrlParser exposing ((</>), Parser, int, map, oneOf, parseHash, s, top)


type Route
    = Articles
    | Article Int
    | Projects
    | Users
    | NotFound


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map Articles top
        , map Article (s "articles" </> int)
        , map Projects (s "projects")
        , map Users (s "users")
        ]


parseLocation : Location -> Route
parseLocation location =
    case parseHash matchers location of
        Just route ->
            route

        Nothing ->
            NotFound
