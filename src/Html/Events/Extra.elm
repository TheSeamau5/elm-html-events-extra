module Html.Events.Extra where

import Html exposing (Attribute)
import Html.Decoder exposing (MouseEvent, mouseEvent)
import Html.Events exposing (on)
import Signal exposing (Address, message)


onClick : Address MouseEvent -> Attribute
onClick clickAddress =
  on "click" mouseEvent (message clickAddress)
