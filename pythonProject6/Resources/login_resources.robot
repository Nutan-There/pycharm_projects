*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN URL}    https://admin-demo.nopcommerce.com
${BROWSER}      edge

*** Keywords ***
open my browser
    open browser    ${LOGIN URL}    ${BROWSER}
    maximize browser window
close browser
    close all browsers

open login page  #user define kewords
    go to    ${LOGIN URL}
Input username
    [Arguments]    ${username}
    input text    id:Email  ${username}

input password
    [Arguments]    ${password}
    input text    id:Password   ${password}

click login button
    click element    xpath://button[@class='button-1 login-button']

click logout link
    click link    Logout

Error message should be visible
    page should contain    Login was unsuccessful

dashboard page should be visible
    page should contain    Dashboard
