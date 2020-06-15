*** Settings ***
Resource  ./utils.robot
Resource  ./po/searchProduct.robot

*** Keywords ***
search product
    searchProduct.wait until search box is visible
    searchProduct.input text to search box
    BuiltIn.Sleep  1
    searchProduct.clicked search button
