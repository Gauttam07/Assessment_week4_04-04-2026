*** Settings ***
Library    SeleniumLibrary
Resource    ../../locators/login_page_locator.robot

*** Keywords ***
Login page handling
    [Documentation]    Login page
    [Arguments]  ${Emailid}  ${pwd}
    Click Element    ${email}

    Log    Clicking on account email
    Input Text    ${email}  ${Emailid}
    Sleep  2s

    Click Element    ${password}
    Log    Clicking on account password
    Input Text    ${password}  ${pwd}
    Sleep  2s

    Click Button    ${login_button}
    Log    Clicking on submit button
    Sleep    3s
    
#    Page Should Contain    ACCOUNT
#
#    Page Should Contain    Log out