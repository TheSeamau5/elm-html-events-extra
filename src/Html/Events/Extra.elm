module Html.Events.Extra where

import Html exposing (Attribute)
import Html.Decoder exposing (MouseEvent, mouseEvent, KeyboardEvent, keyboardEvent)
import Html.Events exposing (on)
import Signal exposing (Address, message)
import Json.Decode exposing (Decoder)

-- helpers --
eventHandler decoder name address =
  on name decoder (message address)


mouseEventHandler =
  eventHandler mouseEvent


--------------------------
-- Mouse Event Handlers --
--------------------------

onClick : Address MouseEvent -> Attribute
onClick =
  mouseEventHandler "click"

onDoubleClick : Address MouseEvent -> Attribute
onDoubleClick =
  mouseEventHandler "dblclick"


onMouseMove : Address MouseEvent -> Attribute
onMouseMove =
  mouseEventHandler "mousemove"

onMouseDown : Address MouseEvent -> Attribute
onMouseDown =
  mouseEventHandler "mousedown"

onMouseUp : Address MouseEvent -> Attribute
onMouseUp =
  mouseEventHandler "mouseup"

onMouseEnter : Address MouseEvent -> Attribute
onMouseEnter =
  mouseEventHandler "mouseenter"


onMouseLeave : Address MouseEvent -> Attribute
onMouseLeave =
  mouseEventHandler "mouseleave"

onMouseOver : Address MouseEvent -> Attribute
onMouseOver =
  mouseEventHandler "mouseover"

onMouseOut : Address MouseEvent -> Attribute
onMouseOut =
  mouseEventHandler "mouseout"


-----------------------------
-- Keyboard Event Handlers --
-----------------------------

keyboardEventHandler =
  eventHandler mouseEvent


onKeyDown : Address KeyboardEvent -> Attribute
onKeyDown =
  keyboardEventHandler "keydown"

onKeyPress : Address KeyboardEvent -> Attribute
onKeyPress =
  keyboardEventHandler "keypress"

onKeyUp : Address KeyboardEvent -> Attribute
onKeyUp =
  keyboardEventHandler "keyup"
