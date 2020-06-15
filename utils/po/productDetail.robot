*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${selector_productList}  class=p-card-wrppr
${selector_product}  class=p-card-img-wr


*** Keywords ***
verify and choose product
    ${productCount} =  Get Element Count  ${selector_productList}
    BuiltIn.Run Keyword If  ${productCount} > 0  click element  ${selector_product} 
