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

