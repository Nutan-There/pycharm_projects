*** Settings ***
Library    SeleniumLibrary


*** Variables ***

*** Test Cases ***
Login Test
    #Create Webdriver    Chrome    executable_path=C:/driver/chromedriver.exe
    Open Browser    https://www.saucedemo.com/    edge
    Input Text    id:user-name    standard_user
    Input Text    id:password    secret_sauce
    Click Element    xpath://*[@id="login-button"]
    Close Browser

Login with wrong credentials
    Open Browser    https://www.saucedemo.com/    edge
    Input Text    id:user-name    standard_user
    Input Text    id:password    secret_123
    Click Element    xpath://*[@id="login-button"]
    Close Browser

*** Keywords ***