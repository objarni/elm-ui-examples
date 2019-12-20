module ResponsiveRowOfBoxes exposing (main)

import Element
    -- this is elm-ui
    exposing
        ( Element
        , centerX
        , centerY
        , el
        , height
        , image
        , padding
        , rgb255
        , spacing
        , text
        , width
        , wrappedRow
        )
import Element.Background as Bg
import Html exposing (Html)


main : Html msg
main =
    Element.layout []
        -- layout converts from Element to Html
        responsiveRow


responsiveRow : Element a
responsiveRow =
    wrappedRow
        [ centerY, padding 10, centerX ]
        [ box
        , img
        , box
        , img
        , box
        , img
        ]


box =
    el
        -- these two centers the text in div
        (Bg.color (rgb255 150 150 250) :: fixedWidthHeight)
        (text "BOX")


img =
    el
        []
        (image fixedWidthHeight { src = "image.jpeg", description = "An apple" })


fixedWidthHeight =
    [ width fixedSize, height fixedSize ]


fixedSize =
    Element.px 150
