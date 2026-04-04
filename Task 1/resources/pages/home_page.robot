*** Settings ***
Library  SeleniumLibrary
Resource  ../../locators/home_page_locators.robot

*** Keywords ***
Login to application
    [Documentation]  account
    Click Element    ${account}

    
Search To application
    [Documentation]  Search  
    Click Element    ${search}