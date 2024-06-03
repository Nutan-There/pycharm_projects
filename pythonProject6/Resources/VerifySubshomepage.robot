*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}        edge
${URL}            http://automationexercise.com
${EMAIL}          test@example.com

*** Test Cases ***
Test Case 10: Verify Subscription in Home Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.5

    # Test Step 1-3: Verify Home Page
    Click Element    xpath=//*[@id="header"]/div/div/div/div[2]/div/ul/li[1]/a

    # Test Step 4: Scroll down to footer
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight);

    # Test Step 5: Verify text 'SUBSCRIPTION'
    #Wait Until Page Contains    SUBSCRIPTION

    # Test Step 6: Enter email address in input and click arrow button
    Input Text     id=susbscribe_email    ${EMAIL}
    Click Element    id=subscribe


    # Test Step 7: Verify success message 'You have been successfully subscribed!' is visible
    #Wait Until Page Contains    You have been successfully subscribed!

    # Close the browser
    Close Browser
