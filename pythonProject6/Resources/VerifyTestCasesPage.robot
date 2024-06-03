*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}        edge
${URL}            http://automationexercise.com

*** Test Cases ***
Test Case 7: Verify Test Cases Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.5

    # Test Step 1-3: Verify Home Page
    Click Element    xpath=//*[@id="header"]/div/div/div/div[2]/div/ul/li[1]/a

    # Test Step 4-5: Click on 'Test Cases' button
    Click Element    xpath=//a[contains(text(), 'Test Cases')]

    # Test Step 6: Verify user is navigated to test cases page successfully
    Wait Until Page Contains    Test Cases Page

    # Close the browser
    Close Browser
