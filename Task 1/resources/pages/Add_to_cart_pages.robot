*** Settings ***
Library    SeleniumLibrary
Resource    ../../locators/Add_To_Cart_locator.robot

*** Keywords ***
Add Product
  [Documentation]  Handling Add to cart
  Click Element    ${Click}
  Sleep    2s
  Scroll Element Into View    ${scroll}
  Sleep    2s
  Click Element    ${gender}
  Sleep    3s
  Scroll Element Into View    ${scroll}
  Sleep    2s
  Click Element    ${size}
  Sleep    2s
  Click Element    ${Increase_Quantity}
  Sleep    2s
  Click Element    ${Add_to_cart}
  Sleep    2s
  Page Should Contain    GL001 Kulfi Rabri
  Log To Console    Verify product added
  Sleep    5s
  Click Element    ${close_button}
  Sleep    2s
#  Click Element    ${Cart}
#  Sleep    2s
