*** Settings ***
Library  SeleniumLibrary
Library     ../config/env_loader.py
*** Variables ***
${BROWSER}      chrome


*** Keywords ***
Open Application
    [Documentation]     Opens the application
    [Arguments]     ${url}
    Open Browser    ${url}      ${BROWSER}
#    Open Application    ${url}  ${BROWSER}
    Maximize Browser Window

Close Application
   Close All Browsers

