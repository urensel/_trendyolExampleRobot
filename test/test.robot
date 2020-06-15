*** Settings ***
Library  SeleniumLibrary
Library  DebugLibrary
Resource  ../utils/utils.robot
Resource  ../utils/homepageApp.robot
Resource  ../utils/signInUpMenuApp.robot
Resource  ../utils/signUpApp.robot
Resource  ../utils/searchProductApp.robot
Resource  ../utils/productDetailApp.robot
Test Setup  utils.start session
Test Teardown  utils.close session


*** Test Cases ***
go to homepage
    homepageApp.go to homepage

open account process menu
      homepageApp.go to homepage
      signInUpMenuApp.open account menu

register test
    homepageApp.go to homepage
    signInUpMenuApp.open account menu
    signUpApp.open sign up popup

search product
    homepageApp.go to homepage
    searchProductApp.search product

choose product
    homepageApp.go to homepage
    searchProductApp.search product
    productDetailApp.verify and choose product