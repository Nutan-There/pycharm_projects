*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}        edge
${URL}            http://automationexercise.com
${USERNAME}       NutanThere
${EMAIL}          nutanthere@gmail.com
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
Test Case 22: Add to cart from Recommended items
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.5

#Verify that home page is visible successfully

#Click 'Signup / Login' button
    click element    //a[@href='/login']

#Fill all details in Signup and create account
    Input Text   //input[@type='text']    ${USERNAME}
    Input Text   //input[@data-qa='signup-email']    ${EMAIL}
    Click Element    xpath=//button[@data-qa='signup-button']
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

#Verify 'ACCOUNT CREATED!' and click 'Continue' button
    Click Element    //a[@data-qa='continue-button']

#Verify ' Logged in as username' at top
    sleep    2
#Add products to cart
    click element    //a[@href='/products']
    click element    //a[@data-product-id='1']
    sleep    1
    click element    //*[@id="cartModal"]/div/div/div[2]/p[2]/a

#Click 'Cart' button

#Verify that cart page is displayed

#Click Proceed To Checkout
    click element    //a[@class='btn btn-default check_out']

#Verify that the delivery address is same address filled at the time registration of account
#Verify that the billing address is same address filled at the time registration of account

#Click 'Delete Account' button
    click element    //a[@href='/delete_account']

#Verify 'ACCOUNT DELETED!' and click 'Continue' button
    click element    //a[@data-qa='continue-button']