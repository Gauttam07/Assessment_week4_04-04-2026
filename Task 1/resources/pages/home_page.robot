*** Settings ***
Library  SeleniumLibrary
Resource  ../../locators/home_page_locators.robot

*** Keywords ***
Opening application
    [Documentation]  account
    Click Element    ${account}

    
