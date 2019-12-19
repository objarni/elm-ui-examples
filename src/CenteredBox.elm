module CenteredBox exposing (main)

-- this is standard Elm

import Element
    -- this is elm-ui
    exposing
        ( Element
        , centerX
        , centerY
        , el
        , text
        )
import Html exposing (Html)


main : Html msg
main =
    Element.layout []
        -- layout converts from Element to Html
        box


box : Element a
box =
    el [ centerX, centerY ] (text "CENTERED")
