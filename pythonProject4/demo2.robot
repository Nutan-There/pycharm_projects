*** Settings ***
Library    SeleniumLibrary
Task Setup    open browser   ${appURL} ${browser}
Test Teardown    Close browser

*** Variables ***
${appURL}    https://opensource-demo.orangehrmlive.com/
${browser}   Edge

*** Test Cases ***
LoginTest with valid credentials
    [Tags]    Smoke
    MAXIMIZE BROWSER WINDOW
    Enter Username
    Enter Password
    Click On Login Button
    Verify Dashboard for user
    Logout from application

*** Keywords ***
Enter Username
    Input Text  name:username   Admin
Enter Password
    Input Text   name:password    admin123
Click On Login Button
    click button    xpath://*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
Verify Dashboard for user
    ${url}  get location
    log to console    ${url}
    should contain    ${url}    dashboard
Logout from application
    click link    partial link:welcome
    Sleep   3s
    click link    link:Logout