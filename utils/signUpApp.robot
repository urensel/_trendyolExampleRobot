*** Settings ***
Resource  ./utils.robot
Resource  ./po/signUp.robot

*** Keywords ***
open sign up popup
    signUp.wait until login sign up button is visible
    signUp.clicked register button
    signUp.wait Until email is visible
    signUp.input text to email box
    signUp.input text to password box
    signUp.clicked gender
    signUp.clicked marketing confirmed
    signUp.clicked terms of use
    signUp.clicked submit
    signUp.verify register