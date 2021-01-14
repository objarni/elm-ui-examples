module PaddedWrappedText exposing (main)

import Element exposing (Element)
import Element.Background
import Html exposing (Html)


main : Html msg
main =
    Element.layout []
        -- layout converts from Element to Html
        box


loremIpsum =
    """Lorem ipsum dolor sit amet, consectetur
    adipiscing elit. Curabitur hendrerit hendrerit
    dui a efficitur. Pellentesque habitant morbi
    tristique senectus et netus et malesuada fames ac
    turpis egestas. Fusce dapibus euismod eros, ac
    dapibus nisi varius a. Vivamus efficitur dignissim
    orci a consectetur. Quisque nec fringilla erat.
    Cras lacinia, tortor at facilisis mollis, quam enim
    scelerisque velit, tristique vulputate ligula orci
    sed nunc. Nunc accumsan tortor nec neque viverra
    auctor."""


box : Element a
box =
    Element.el
        [ Element.centerX -- these two centers the div
        , Element.centerY
        , Element.Background.color (Element.rgb255 150 150 250)
        , Element.width (Element.px 500)
        , Element.height (Element.px 400)
        ]
        (Element.el
            -- paragraph wraps text by default
            [ Element.padding 50
            ]
            (Element.paragraph [] [ Element.text loremIpsum ])
        )
