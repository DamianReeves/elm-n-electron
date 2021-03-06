module Main exposing (Model, Msg, update, view, subscriptions, init)

import Html exposing (..)


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
    }


type alias Model =
    { greeting : String
    }

modelInitialValue : String
modelInitialValue = "Welcome" 

type Msg
    = Msg1
    | Msg2


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of
        Msg1 ->
            (model, Cmd.none)

        Msg2 ->
            (model, Cmd.none)


view : Model -> Html Msg
view model =
    div []
        [ text (model.greeting ++ ", World") ]


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



init : (Model, Cmd Msg)
init = 
    (Model modelInitialValue, Cmd.none)
