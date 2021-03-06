module ResponsiveRowOfBoxes exposing (main)

import Element exposing (Element)
import Element.Background as Background
import Html exposing (Html)


main : Html msg
main =
    Element.layout []
        -- layout converts from Element to Html
        responsiveRow


responsiveRow : Element a
responsiveRow =
    Element.wrappedRow
        [ Element.centerY, Element.padding 10, Element.centerX ]
        [ box
        , img
        , box
        , img
        , box
        , img
        ]


box =
    Element.el
        (Background.color (Element.rgb255 150 150 250) :: dim)
        (Element.text "BOX")


img =
    Element.el
        []
        (Element.image dim { src = "apple.jpeg", description = "An apple" })


dim =
    [ Element.width fixedSize, Element.height fixedSize ]


fixedSize =
    Element.px 150
