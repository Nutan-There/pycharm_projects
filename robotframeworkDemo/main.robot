*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Successfully Login
    open browser    https://www.learnrobotframework.com/tutorials/build-your-first-test-case-with-robot-framework/  edge
    input text   username  admin
    input text   password  password
    click button    submit
    #Wait Until Page Contains Element    login-status
    element text should be  login-status    Login successful, you are now redirected

Login with wrong credentials
    open browser    https://www.learnrobotframework.com/tutorials/build-your-first-test-case-with-robot-framework/  edge
    input text   username   admin
    input text   password   thisiswrongpassword
    click button    submit
    element text should be  login-status    Login failed. Please check your username and password