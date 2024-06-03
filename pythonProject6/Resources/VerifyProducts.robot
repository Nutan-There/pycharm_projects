*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}        edge
${URL}            http://automationexercise.com

*** Test Cases ***
Test Case 8: Verify All Products and Product Detail Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.5

    # Test Step 1-3: Verify Home Page
    Click Element    xpath=//*[@id="header"]/div/div/div/div[2]/div/ul/li[1]/a

    # Test Step 4-5: Click on 'Products' button
    Click Element    xpath=//a[contains(text(), 'Products')]

    # Test Step 6: Verify user is navigated to ALL PRODUCTS page successfully
    #Wait Until Page Contains    ALL PRODUCTS Page

    # Test Step 7: Verify the products list is visible
    # Add your verification steps for the product list visibility

    # Test Step 8: Click on 'View Product' of the first product
    Click Element    //a[@href='/product_details/1']

    # Test Step 9: Verify product detail is visible
    # Add your verification steps for product detail (name, category, price, availability, condition, brand)

    # Close the browser
    Close Browser

