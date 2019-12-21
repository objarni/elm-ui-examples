# elm-ui-examples

![Screenshot](/Screenshot.png?raw=true "Screenshot")

A collection of simple examples of layouts using elm-ui.

## Running the examples

In a terminal type

    elm reactor
    
Then browse the `src` folder from `localhost:8000`.

Assuming Elm 0.19.1.


### CenteredBox
A horisontally and vertically centered fixed-size box with centered text in it. 

### GoldenRatioColumns
Two full-height columns layed out in the 5:2 golden ratio, scaling with viewport. This demoes the use of alignment to position an element. Inspired by [1].

### InteractiveButtons
A re-make of the +1, -1 buttons [2] from elm Html examples; click the buttons to increase or decrease the value displayed.

### ResponsiveRowOfBoxes
An horisontal row of fixed size boxes with a mix of images and text, all same size. The row is centered in viewport. This example also demonstrates the use of padding between boxes.


[1] https://korban.net/posts/elm/2019-11-17-elm-ui-introduction/
[2] https://guide.elm-lang.org/architecture/buttons.html
