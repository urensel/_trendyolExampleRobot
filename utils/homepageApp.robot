*** Settings ***
Resource  ./utils.robot
Resource  ./po/homepage.robot

*** Keywords ***
go to homepage
    homepage.go to site
    BuiltIn.Sleep  1
    homepage.wait until popup is visible
    homepage.close popup
    homepage.wait until popup is not visible
