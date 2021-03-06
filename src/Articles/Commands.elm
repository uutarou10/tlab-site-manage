module Articles.Commands exposing (..)

import Http
import Json.Decode as Decode
import Articles.Model exposing (Article)
import Articles.Messages exposing (..)


fetchAllUrl : String
fetchAllUrl =
    "http://localhost:3001/articles"


articleDecoder : Decode.Decoder Article
articleDecoder =
    Decode.map5 Article
        (Decode.field "id" Decode.int)
        (Decode.field "title" Decode.string)
        (Decode.field "body" Decode.string)
        (Decode.field "user_id" Decode.int)
        (Decode.field "created_at" Decode.string)


articlesDecoder : Decode.Decoder (List Article)
articlesDecoder =
    Decode.list articleDecoder


fetchAll : Cmd Msg
fetchAll =
    Http.get fetchAllUrl articlesDecoder
        |> Http.send OnFetchAll
