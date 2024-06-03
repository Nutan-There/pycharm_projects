*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    edge
${URL}        http://automationexercise.com
${USERNAME}   testuser
${EMAIL}      testuser@example.com
${PASSWORD}   TestPassword123

*** Test Cases ***
Test Case 14: Place Order: Register while Checkout
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.5



    #If you would like to add a comment about your order, please write it in the field below.
    input text    //*[@id="ordermsg"]/textarea    no comment

    #Placed order
    click element    //a[@class='btn btn-default check_out']

    # Enter payment details
    Input Text    //input[@name='name_on_card']   Test User
    Input Text    //input[@name='card_number']    4111111111111111
    Input Text    //input[@name='cvc']   123
    Input Text    //input[@name='expiry_month']   12
    Input Text  //input[@name='expiry_year']   2024

    # Click 'Pay and Confirm Order' button
    click element    id=submit


    # Close the browser
    Close Browser

