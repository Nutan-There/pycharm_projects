*** Settings ***
Library    SeleniumLibrary
Task Setup    open browser   ${appURL} ${browser}
Test Teardown    Close browser

*** Variables ***
${appURL}    https://opensource-demo.orangehrmlive.com/
${browser}   Chrome

*** Test Cases ***
LoginTest with valid credentials
    [Tags]    Smoke
    MAXIMIZE BROWSER WINDOW
    input text     name:username    Admin
    input text     name:password    admin123
    click button    xpath://*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
    ${url}  get location
    log to console    ${url}
    should contain    ${url}    dashboard

LoginTest with Invalid credentials
    [Tags]       Regression
    MAXIMIZE BROWSER WINDOW
     input text    name:username   Admin
    input text     name:password    admin1234
    click button    xpath://*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
    ${url}  get location
    log to console    ${url}
    should contain    ${url}    dashboard


