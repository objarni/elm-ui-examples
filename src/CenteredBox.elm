module CenteredBox exposing (main)

import Element
    -- this is elm-ui
    exposing
        ( Element
        , centerX
        , centerY
        , el
        , height
        , rgb255
        , text
        , width
        )
import Element.Background as Bg
import Html exposing (Html)


main : Html msg
main =
    Element.layout []
        -- layout converts from Element to Html
        box


box : Element a
box =
    el
        [ centerX -- these two centers the div
        , centerY
        , Bg.color (rgb255 150 150 250)
        , width (Element.px 150)
        , height (Element.px 150)
        ]
        (el
            -- these two centers the text in div
            [ centerX, centerY ]
            (text "CENTERED")
        )
