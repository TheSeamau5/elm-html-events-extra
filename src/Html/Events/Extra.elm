module Html.Events.Extra where

import Html.Decoder exposing (clickEvent, ClickEvent)
import Html.Events exposing (on)
import Signal exposing (Address, message)


onClick : Address ClickEvent -> Attribute
onClick clickAddress =
  on "click" clickEvent (message clickAddress)
