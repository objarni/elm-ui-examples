module GoldenRatioColumns exposing (main)

import Element exposing (Element)
import Element.Background
import Html exposing (Html)


main : Html msg
main =
    Element.layout []
        -- layout converts from Element to Html
        goldenRatio


goldenRatio : Element a
goldenRatio =
    Element.row [ Element.width Element.fill, Element.height Element.fill ] [ leftColumn, rightColumn ]


leftColumn : Element a
leftColumn =
    Element.column
        [ Element.width (Element.fillPortion 2)
        , Element.height Element.fill
        , Element.Background.color (Element.rgb255 100 50 100)
        ]
        [ Element.text "#general"
        , Element.text "#random"
        , Element.text "#some-topic"
        ]


rightColumn : Element a
rightColumn =
    Element.column
        [ Element.width (Element.fillPortion 5)
        , Element.height Element.fill
        , Element.Background.color (Element.rgb255 150 100 150)
        ]
        [ Element.text "This is the chat pane"
        , Element.text "here we chat!"
        , Element.el
            [ Element.width Element.fill
            , Element.alignBottom
            , Element.Background.color (Element.rgb255 155 195 155)
            ]
            (Element.text ">")
        ]
