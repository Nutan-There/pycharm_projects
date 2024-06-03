*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}        edge
${URL}            http://automationexercise.com
${USERNAME}       NutanThere
${EMAIL}          nutanithere2011@gmail.com
${PASSWORD}       Password123



*** Test Cases ***
Test Case 1: Register User
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.5

    # Test Step 1-3: Verify Home Page
    #Wait Until Element Is Visible    xpath=//div[@id='homePage']
    Click Element    xpath=//*[@id="header"]/div/div/div/div[2]/div/ul/li[4]/a

    # Test Step 4-5: Verify New User Signup
    Wait Until Page Contains    New User Signup!
    Input Text   //input[@type='text']    ${USERNAME}
    Input Text   //input[@data-qa='signup-email']    ${EMAIL}
    Click Element    xpath=//button[@data-qa='signup-button']