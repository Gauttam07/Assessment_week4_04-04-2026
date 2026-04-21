*** Settings ***
Resource    ../../resources/pages/home_page.robot
Resource    ../../resources/pages/login_page.robot
Resource    ../../resources/common_resources.robot
Resource    ../../resources/pages/logout_page.robot
Resource    ../../resources/pages/Search_product.robot
Resource    ../../../Sauce_demo_robot/resource/Pages/cart_page.robot
Resource    ../../resources/pages/Add_to_cart_pages.robot

Suite Setup  Load Environment

Test Setup    Open Application
Test Teardown    Close Application

*** Test Cases ***
TC01 Login User
    [Documentation]    Check log in
    [Tags]    functional


    Opening application
    Sleep    3s
    Login page handling    ${USER_EMAIL}  ${USER_PWD}
    Sleep    2s

TC002 Logout User
    [Documentation]  Check Log out
    [Tags]  functional
    Opening application
    Sleep    3s
    Login page handling    ${USER_EMAIL}  ${USER_PWD}
    Sleep    2s
    Logout Page
    Sleep  2s

TC003 Search Product
    [Documentation]  Check Search Product
#    Opening application
#    Sleep    3s
    Search Product
    Sleep    2s

TC004 Add To cart
    [Documentation]  Add to cart
    Search Product
    Sleep  2s
    Add Product
    Sleep  2s

TC005 E2E
    [Documentation]  E2E
    Opening application
    Sleep    3s
    Login page handling    ${USER_EMAIL}  ${USER_PWD}
    Sleep    2s
    Search Product
    Sleep    2s
    Add Product
    Sleep  2s
    Logout Page
    Sleep  2s


    

TC07 Invalid Credentional
    [Documentation]  Check Log out
    [Tags]  functional
    Opening application
    Sleep    3s
    Login page handling    None  ${USER_PWD}
    Sleep    2s
    Page Should Contain    Incorrect email or password.
    Sleep    2s

