module InteractiveButtons exposing (main)

import Browser
import Element
import Element.Background as Bg
import Element.Input as Input
import Html exposing (Html)


type alias Model =
    { count : Int }


initialModel : Model
initialModel =
    { count = 0 }


type Msg
    = Increment
    | Decrement


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            { model | count = model.count + 1 }

        Decrement ->
            { model | count = model.count - 1 }


view : Model -> Html Msg
view model =
    Element.layout []
        (Element.column
            [ Element.centerX ]
            [ Input.button buttonStyle { onPress = Just Increment, label = Element.text "+1" }
            , Element.text <| String.fromInt model.count
            , Input.button buttonStyle { onPress = Just Decrement, label = Element.text "-1" }
            ]
        )


buttonStyle =
    [ Element.padding 10, Bg.color (Element.rgb 0 1 0) ]


main : Program () Model Msg
main =
    Browser.sandbox
        { init = initialModel
        , view = view
        , update = update
        }
