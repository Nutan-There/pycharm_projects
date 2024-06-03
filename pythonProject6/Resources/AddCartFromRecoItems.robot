*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}        chrome
${URL}            http://automationexercise.com

*** Test Cases ***
Test Case 22: Add to cart from Recommended items
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.5

#Scroll to bottom of page

#Verify 'RECOMMENDED ITEMS' are visible
    click element    //a[@href='/products']

#Click on 'Add To Cart' on Recommended product
    click element    //a[@href='/product_details/1']

    click element    //button[@class='btn btn-default cart']

#Click on 'View Cart' button
    click element    //a[@href='/view_cart']
#Verify that product is displayed in cart page