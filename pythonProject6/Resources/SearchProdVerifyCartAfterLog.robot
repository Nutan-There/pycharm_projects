*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}        edge
${URL}            http://automationexercise.com
${EMAIL}          nutanithere2011@gmail.com
${PASSWORD}       Password123

*** Test Cases ***
Test Case 20: Search Products and Verify Cart After Login
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    1

#Click on 'Products' button
    click element    //a[@href='/products']

#Verify user is navigated to ALL PRODUCTS page successfully

#Enter product name in search input and click search button
    input text    id=search_product     winter top
    click element    id=submit_search

#Verify 'SEARCHED PRODUCTS' is visible

#Verify all the products related to search are visible

#Add those products to cart
    click element    //a[@class='btn btn-default add-to-cart']

#Click 'Cart' button and verify that products are visible in cart
    click element    //*[@id="cartModal"]/div/div/div[2]/p[2]/a

#Click 'Signup / Login' button and submit login details
    click element    //a[@href='/login']
    input text    //input[@data-qa='login-email']    ${EMAIL}
    input text    //input[@data-qa='login-password']    ${PASSWORD}
    click element    //button[@data-qa='login-button']
#Again, go to Cart page
    click element    //a[@href='/view_cart']

#Verify that those products are visible in cart after login as well

