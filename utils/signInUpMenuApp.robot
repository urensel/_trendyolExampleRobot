*** Settings ***
Resource  ./utils.robot
Resource  ./po/signInUpMenu.robot

*** Keywords ***
open account menu
    signInUpMenu.wait until login register button is visible
    signInUpMenu.clicked login register button
    signInUpMenu.wait Until text Is visible