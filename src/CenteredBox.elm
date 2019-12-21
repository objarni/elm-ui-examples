module CenteredBox exposing (main)

import Element exposing (Element)
import Element.Background
import Html exposing (Html)


main : Html msg
main =
    Element.layout []
        -- layout converts from Element to Html
        box


box : Element a
box =
    Element.el
        [ Element.centerX -- these two centers the div
        , Element.centerY
        , Element.Background.color (Element.rgb255 150 150 250)
        , Element.width (Element.px 150)
        , Element.height (Element.px 150)
        ]
        (Element.el
            -- these two centers the Element.text in div
            [ Element.centerX, Element.centerY ]
            (Element.text "CENTERED")
        )
