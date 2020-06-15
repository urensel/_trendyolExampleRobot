*** Settings ***
Resource  ./utils.robot
Resource  ./po/productDetail.robot

*** Keywords ***
verify and choose product
    productDetail.verify and choose product