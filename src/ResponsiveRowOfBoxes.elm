module ResponsiveRowOfBoxes exposing (main)

import Element
    -- this is elm-ui
    exposing
        ( Element
        , centerX
        , centerY
        , el
        , height
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
        [ centerY, spacing 10 ]
        [ box
        , box
        , box
        , box
        , box
        , box
        ]


box =
    el
        -- these two centers the text in div
        [ width (Element.px 150)
        , height (Element.px 150)
        , padding 10
        , Bg.color (rgb255 150 150 250)
        ]
        (text "BOX")
