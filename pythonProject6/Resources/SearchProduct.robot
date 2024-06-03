*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}        edge
${URL}            http://automationexercise.com
${SEARCH_TERM}    blue top

*** Test Cases ***
Test Case 9: Search Product
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.5

    # Test Step 1-3: Verify Home Page
    Click Element    xpath=//*[@id="header"]/div/div/div/div[2]/div/ul/li[1]/a

    # Test Step 4-5: Click on 'Products' button
    Click Element    xpath=//a[contains(text(), 'Products')]

    # Test Step 6: Verify user is navigated to ALL PRODUCTS page successfully
    #Wait Until Page Contains    ALL PRODUCTS Page

    # Test Step 7: Enter product name in search input and click search button
    Input Text    id=search_product    ${SEARCH_TERM}
    Click Element    id=submit_search
    # Test Step 8: Verify 'SEARCHED PRODUCTS' is visible
    #Wait Until Page Contains    SEARCHED PRODUCTS

    # Verify all the products related to search are visible
    # Add your verification steps for the search results

    # Close the browser
    Close Browser
