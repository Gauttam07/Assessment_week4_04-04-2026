*** Settings ***
Library    SeleniumLibrary
Resource    ../../locators/logout_page.robot

*** Keywords ***
Logout Page
  [Documentation]  Handling logout
  Click Element    ${account}
  Sleep    2s

  Wait Until Element Is Visible    ${logout}
  Click Element    ${logout}
  Sleep  3s
  Log    logout button clicked