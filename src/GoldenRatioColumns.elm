module GoldenRatioColumns exposing (main)

import Element
    -- this is elm-ui
    exposing
        ( Element
        , alignBottom
        , centerX
        , centerY
        , column
        , el
        , fill
        , fillPortion
        , height
        , rgb255
        , row
        , text
        , width
        )
import Element.Background as Background
import Html exposing (Html)


main : Html msg
main =
    Element.layout []
        -- layout converts from Element to Html
        goldenRatio


goldenRatio : Element a
goldenRatio =
    row [ width fill, height fill ] [ leftColumn, rightColumn ]


leftColumn : Element a
leftColumn =
    column
        [ width (fillPortion 2)
        , height fill
        , Background.color (rgb255 100 50 100)
        ]
        [ text "#general"
        , text "#random"
        , text "#some-topic"
        ]


rightColumn : Element a
rightColumn =
    column
        [ width (fillPortion 5)
        , height fill
        , Background.color (rgb255 150 100 150)
        ]
        [ text "This is the chat pane"
        , text "here we chat!"
        , el
            [ width fill
            , alignBottom
            , Background.color (rgb255 155 195 155)
            ]
            (text ">")
        ]
