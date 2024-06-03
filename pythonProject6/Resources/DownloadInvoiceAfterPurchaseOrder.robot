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
Test Case 24: Download Invoice after purchase order
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.5

#Verify that home page is visible successfully

#Add products to cart
    click element     //a[@href='/products']

#Click 'Cart' button
    click element    //a[@data-product-id='1']
    sleep    1
    click element    //*[@id="cartModal"]/div/div/div[2]/p[2]/a

#Verify that cart page is displayed

#Click Proceed To Checkout
     click element    //a[@class='btn btn-default check_out']
#Click 'Register / Login' button
    click element    //*[@id="checkoutModal"]/div/div/div[2]/p[2]/a

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

#Click 'Cart' button
    click element    //a[@data-product-id='1']
    sleep    1
    click element    //*[@id="cartModal"]/div/div/div[2]/p[2]/a

#Click 'Proceed To Checkout' button
    click element    //a[@class='btn btn-default check_out']

#Verify Address Details and Review Your Order
    input text    //*[@id="ordermsg"]/textarea      no comment
    sleep    3

#Enter description in comment text area and click 'Place Order'
    sleep    1

    click element     //a[@class='btn btn-default check_out']

#Enter payment details: Name on Card, Card Number, CVC, Expiration date
    Input Text    //input[@name='name_on_card']   NutanThere
    Input Text    //input[@name='card_number']    4111111111111111
    Input Text    //input[@name='cvc']   123
    Input Text    //input[@name='expiry_month']   12
    Input Text  //input[@name='expiry_year']   2024

# Click 'Pay and Confirm Order' button
    click element    id=submit

#Verify success message 'Your order has been placed successfully!'
    sleep    1
#Click 'Download Invoice' button and verify invoice is downloaded successfully.
    click element    //*[@id="form"]/div/div/div/a

#Click 'Continue' button
    click element    //*[@id="form"]/div/div/div/div/a

#Click 'Delete Account' button
    click element    //*[@id="header"]/div/div/div/div[2]/div/ul/li[5]/a

#Verify 'ACCOUNT DELETED!' and click 'Continue' button
    click element    //*[@id="form"]/div/div/div/div/a

    close browser