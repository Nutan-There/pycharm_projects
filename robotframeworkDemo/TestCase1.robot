*** Settings ***
Library    SeleniumLibrary


*** Variables ***

*** Test Cases ***
Login Test
    #Create Webdriver    Edge    executable_path="C:\Users\NTHERE\Downloads\chromedriver_win32\chromedriver.exe"
    Open Browser    https://www.nopcommerce.com/    edge
    click link    xpath://*[@id="login-page"]/body/div[7]/header/nav/ul/li[3]/span/span/svg
    click link    xpath://*[@id="login-page"]/body/div[7]/header/nav/ul/li[3]/ul/li[1]/a
    Input Text    id:Username
    Input Text    id:Password
    Click Element    xpath://*[@id="login-page"]/body/div[7]/section/div/div/div/div/div/div[2]/div[1]/div[2]/form/div[2]/div[4]/input
    Close Browser
*** Keywords ***