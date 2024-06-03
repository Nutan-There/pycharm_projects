
*** Settings ***

Library  SeleniumLibrary

*** Variables ***

${browser}  edge

${url}      https://demo.nopcommerce.com

*** Test Cases ***

TestingInputBox

    Open Browser       ${url}       ${browser}

    Maximize Browser Window

    Title Should Be     nopCommerce demo store

    Click Link          xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a

    ${email_locator}    Set Variable    id:Email

    Element Should Be Visible       ${email_locator}

    Element Should Be Enabled       ${email_locator}

    Input Text          ${email_locator}    vg91@gmail.com

    Sleep               5

    Clear Element Text  ${email_locator}

    Sleep               3

    Close Browser

*** Keywords ***

