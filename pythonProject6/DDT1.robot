*** Settings ***
Library    SeleniumLibrary
Resource     ../pythonProject6/Resources/login_resources.robot
Suite Setup    open my browser
Suite Teardown    close browser
Test Template    Invalid login

*** Test Cases ***
Right user empty pass   admin@yourstore.com   ${EMPTY}
Right user wrong pass   admin@yourstore.com     xyz
Wrong user right pass   admi@yourstore.com      admin
Wrong user empty pass   admi@yourstore.com      ${EMPTY}
Wrong user wrong pass   admi@yourstore.com      xyz

*** Keywords ***
Invalid login
    [Arguments]    ${username}  ${password}
    input username    ${username}
    input password    `${password}`