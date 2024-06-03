*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}        edge
${URL}            http://automationexercise.com
${CORRECT_EMAIL}   nutanithere2011@gmail.com
${CORRECT_PASSWORD}  Password123
*** Test Cases ***
Test Case 17: Remove Products From Cart
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.5

    # Test Step 1-3: Verify Home Page
    #Wait Until Element Is Visible    xpath=//div[@id='homePage']
    Click Element    xpath=//*[@id="header"]/div/div/div/div[2]/div/ul/li[4]/a

    # Test Step 4-5: Verify Login Page
    Wait Until Page Contains    Login to your account
    Click Element    //*[@id="header"]/div/div/div/div[2]/div/ul/li[4]/a

    # Test Step 6: Enter correct email address and password
    Input Text    //input[@data-qa='login-email']    ${CORRECT_EMAIL}
    Input Text   //input[@type='password']  ${CORRECT_PASSWORD}

    # Test Step 7: Click 'Login' button
    Click Element    //button[@data-qa='login-button']

    # Test Step 1-3: Verify Home Page
    #Click Element    xpath=//*[@id="header"]/div/div/div/div[2]/div/ul/li[1]/a

    # Test Step 4: Click 'Products' button
    #Wait Until Element Is Visible    //a[@href='/products']
    Click Element    //a[@href='/products']

    # Test Step 5: Hover over first product and click 'Add to cart'
    #${first_product_locator}    Set Variable    xpath=//div[@class='product'][1]
    #Run Keyword    Hover Over Element    ${first_product_locator}
    #Execute JavaScript    document.querySelector('.ad-container').style.display = 'none';

    Click Element    //a[@data-product-id='1']

    # Test Step 6: Click 'Continue Shopping' button
    Click Element    //button[@class='btn btn-success close-modal btn-block']

    # Test Step 7: Hover over second product and click 'Add to cart'
    #${second_product_locator}    Set Variable    xpath=//div[@class='product'][2]
    #Run Keyword    Hover Over Element    ${second_product_locator}
    Click Element    //a[@data-product-id='2']

    # Test Step 8: Click 'View Cart' button
    Click Element   //*[@id="cartModal"]/div/div/div[2]/p[2]/a

    #remove product from cart
    click element    //a[@class='cart_quantity_delete']