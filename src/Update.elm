module Update exposing (..)

import Articles.Edit
import Articles.Update
import Messages exposing (Msg(..))
import Model exposing (Model)
import Projects.Update
import Route
import Users.Update


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            model ! []

        ArticleMsg submsg ->
            let
                ( newArticles, cmd ) =
                    Articles.Update.update submsg model.articles
            in
            { model | articles = newArticles } ! [ cmd ]

        ProjectMsg submsg ->
            let
                ( newProjects, cmd ) =
                    Projects.Update.update submsg model.projects
            in
            { model | projects = newProjects } ! [ cmd ]

        UsersMsg submsg ->
            let
                ( newUsers, cmd ) =
                    Users.Update.update submsg model.users
            in
            { model | users = newUsers } ! [ cmd ]

        ChangeLocation location ->
            let
                newRoute =
                    Route.parseLocation location
            in
            { model | route = newRoute } ! []
