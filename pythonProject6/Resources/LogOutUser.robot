*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}        edge
${URL}            http://automationexercise.com
${CORRECT_EMAIL}  nutanithere2011@gmail.com
${CORRECT_PASSWORD}  Password123

*** Test Cases ***
Test Case 4: Logout User
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.5

    # Test Step 1-3: Verify Home Page
    Click Element    xpath=//*[@id="header"]/div/div/div/div[2]/div/ul/li[4]/a

    # Test Step 4-5: Verify Login Page
    Wait Until Page Contains    Login to your account
    Click Element    //*[@id="header"]/div/div/div/div[2]/div/ul/li[4]/a

    # Test Step 6: Enter correct email address and password
    Input Text    //input[@data-qa='login-email']    ${CORRECT_EMAIL}
    Input Text   //input[@type='password']  ${CORRECT_PASSWORD}


    # Test Step 7: Click 'Login' button
    Click Element    //button[@data-qa='login-button']

    # Test Step 8: Verify 'Logged in as username' is visible
    #Wait Until Page Contains    Logged in as ${CORRECT_EMAIL}

    # Test Step 9: Click 'Logout' button
    Click Element    //*[@id="header"]/div/div/div/div[2]/div/ul/li[4]/a

    # Test Step 10: Verify user is navigated to login page
    Wait Until Page Contains    Login to your account

    # Close the browser
    Close Browser
