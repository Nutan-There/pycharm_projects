*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    edge
${URL}        http://automationexercise.com

*** Test Cases ***
Test Case 13: Verify Product quantity in Cart
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.5

    #click on blue top
    Click Element  //a[@href='/product_details/1']

    #increses the product value
    Click Element   id=quantity
    input text    //input[@type='number']   4

     # Click 'Add to cart' button
    Click Element    //button[@type='button']

    # Click 'View Cart' button
    Click Element    //*[@id="cartModal"]/div/div/div[2]/p[2]

    # Click 'Proceed To Checkout' button
    click element    //a[@class='btn btn-default check_out']

    # Close the browser
    Close Browser