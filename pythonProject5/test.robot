*** Settings ***
Documentation    Test automation of LinkedIn login
Library     SeleniumLibrary

*** Variables ***

*** Test Cases ***
Launch LinkedIn
    [Documentation]    This test case will launch LinkedIn and attempt to sign in.
    open browser     https://www.linkedin.com/    edge
    maximize browser window
    wait until element is visible    //a[contains(text(), 'Sign in')]   timeout=20s
    click element    //a[contains(text(), 'Sign in')]
    wait until element is visible    //input[@id='username']  timeout=20s
    input text    //input[@id='username']    your_username
    input text    //input[@id='password']    your_password
    click element    //button[text()='Sign in']
    sleep   3s
    close browser

*** Keywords ***

