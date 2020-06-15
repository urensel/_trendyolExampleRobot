*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${homepage}  http://www.trendyol.com
${selector_popup}  class=homepage-popup
${selector_closePopup}  xpath=/html/body/div[8]/div/div/a


*** Keywords ***
go to site
    go to  ${homepage}

wait until popup is visible
    Wait Until Element Is Visible  ${selector_popup}

close popup
    Click Element  ${selector_closePopup}

wait until popup is not visible
    Wait Until Element Is Not Visible  ${selector_popup}