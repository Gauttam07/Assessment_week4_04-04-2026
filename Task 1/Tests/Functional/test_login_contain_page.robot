*** Settings ***
Resource    ../../resources/pages/home_page.robot
Resource    ../../resources/pages/login_page.robot
Resource    ../../resources/common_resources.robot

Test Setup    Open Application    https://gullylabs.com/
Test Teardown    Close Application

*** Test Cases ***
TC01 Login User
    [Documentation]    Check log in
    [Tags]    functional
    Login to application
    Sleep    3s
    Login page handling    wawawa3451@algarr.com    wawawa3451@algarr.com
    Sleep    2s
