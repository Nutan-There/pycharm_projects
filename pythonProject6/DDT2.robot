*** Settings ***
Library    SeleniumLibrary
Resource     ../pythonProject6/Resources/login_resources.robot
Library    DataDriver    ../TestData/LoginData.xlsx    sheet_name=sheet1
Suite Setup   open my browser
Suite Teardown    close browser
Test Template    Invalid login

*** Test Cases ***
LoginTestwithExel using    ${username}    ${password}

*** Keywords ***
Invalid login
    [Arguments]    ${username}  ${password}
    Input username    ${username}
    input password    ${password}
    click login button
    Error message should be visible