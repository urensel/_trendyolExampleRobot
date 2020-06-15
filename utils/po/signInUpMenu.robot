*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${selector_accountBtn}  id=accountBtn
${selector_text}  xpath=//*[@id="popupLoginMain"]/h2

*** Keywords ***
wait until login register button is visible
    Wait Until Element Is Visible  ${selector_accountBtn}

clicked login register button
    Click Element  ${selector_accountBtn}

wait Until text Is visible
    Wait Until Element Is Visible  ${selector_text}