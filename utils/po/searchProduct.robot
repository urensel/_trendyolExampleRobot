*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${selector_searchBox}  class=search-box
${searchText}  robot süpürge
${selector_searchButton}  class=search-icon

*** Keywords ***
wait until search box is visible
    Wait Until Element Is Visible  ${selector_searchBox}

input text to search box
    Input text  ${selector_searchBox}  ${searchText}

clicked search button
    click element  ${selector_searchButton}