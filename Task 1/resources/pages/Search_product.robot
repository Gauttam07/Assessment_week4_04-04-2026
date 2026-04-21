*** Settings ***
Library    SeleniumLibrary
Resource    ../../locators/Search_product.robot

*** Keywords ***
Search Product
  [Documentation]  Handling Search
  Wait Until Element Is Visible    ${Search}
  Click Element    ${Search}
  Sleep    2s
  Input Text    ${Search_field}  Kulfi
  Sleep  2s
  Press Keys    ${Search_field}    ENTER
  Sleep    2s

  Page Should Contain    GL001 Kulfi Pista

