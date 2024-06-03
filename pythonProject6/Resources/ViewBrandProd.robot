*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}        edge
${URL}            http://automationexercise.com

*** Test Cases ***
Test Case 18: View Category Products
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    1

#Click on 'Products' button
    click element    //a[@href='/products']

#Verify that Brands are visible on left side bar
    click element    //a[@href='/brand_products/Polo']

#Verify that user is navigated to brand page and brand products are displayed

#On left side bar, click on any other brand link
    #click element    //a[@href='/brand_products/H&M']

#Verify that user is navigated to that brand page and can see products