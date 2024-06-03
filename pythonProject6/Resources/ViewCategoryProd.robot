*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}        edge
${URL}            http://automationexercise.com

*** Test Cases ***
Test Case 18: View Category Products
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    #Set Selenium Speed    1

    # Test Step 3: Verify Categories are Visible
    #Wait Until Page Contains Element    xpath=//div[@class='sidebar']//ul[contains(@class,'categories')]
    click element    //a[@href='/products']
    click element    //a[@href='/product_details/1']

    # Test Step 4-5: Click on 'Women' Category and Sub-Category (e.g., Dress)

    Click Element    //a[@href='#Women']
    Click Element    //a[@href='/category_products/1']

    # Test Step 6: Verify Category Page
    #Wait Until Page Contains    WOMEN - TOPS PRODUCTS

    # Test Step 7-8: Click on Sub-Category Link of 'Men' Category
    Click Element    //a[@href='#Men']
    click element    //a[@href='/category_products/3']

    # Verify that user is navigated to the category page
    #Wait Until Page Contains    MEN - SUB-CATEGORY PRODUCTS

    Close Browser
