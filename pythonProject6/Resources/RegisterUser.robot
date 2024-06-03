*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}        edge
${URL}            http://automationexercise.com
${USERNAME}       NutanThere
${EMAIL}          nutanithere2011@gmail.com
${PASSWORD}       Password123
${FIRST_NAME}     Nutan
${LAST_NAME}      There
${COMPANY}        ABC Company
${ADDRESS}        123 Main Street
${ADDRESS2}       Apt 456
${COUNTRY}        United States
${STATE}          California
${CITY}           Los Angeles
${ZIPCODE}        90001
${MOBILE_NUMBER}  +1 555-123-4567

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

    # Test Step 6-13: Enter Account Information
    #Wait Until Page Contains    ENTER ACCOUNT INFORMATION
    # Wait for the radio button to be visible before selecting it
    #Wait Until Element Is Visible    //input[@id='id_gender1']
    #Select Radio Button    //input[@id='id_gender1']    Mr.



    Input Text    id=first_name    ${FIRST_NAME}
    Input Text    id=last_name    ${LAST_NAME}
    Input Text    id=password    ${PASSWORD}
    Select From List By Index    xpath=//*[@id="days"]    2
    #Select From List By Index    xpath=//select[@id='months']  January
    #Select From List By Index    xpath=//*[@id="years"]   2004

    Click Element    xpath=//input[@type='checkbox' and @name='newsletter']
    #Click Element    xpath=//input[@type='checkbox' and @name='special_offers']
    Input Text    id=company    ${COMPANY}
    Input Text    //input[@data-qa='address']    ${ADDRESS}
    Input Text    id=address2   ${ADDRESS2}
    Select From List By Label    id=country    ${COUNTRY}
    Input Text    //input[@data-qa='state']    ${STATE}
    Input Text    id=city       ${CITY}
    Input Text    id=zipcode    ${ZIPCODE}
    Input Text    //input[@data-qa='mobile_number']     ${MOBILE_NUMBER}
    Click Element    xpath=//button[text()='Create Account']

    # Test Step 14-18: Verify Account Created and Delete Account
    #Wait Until Page Contains    ACCOUNT CREATED!
    Click Element    xpath=//*[@id="form"]/div/div/div/div/a
    #Wait Until Page Contains    Logged in as ${USERNAME}
    Click Element   //a[@href='/delete_account']
    #Wait Until Page Contains    ACCOUNT DELETED!
    Click Element    //a[@data-qa='continue-button']
    Close Browser
