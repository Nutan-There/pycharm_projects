*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN URL}    https://phptravels.com/demo/
${BROWSER}      edge
${email}    nutan-raju.there@capgemini.com
${password}    Nutan@1234

*** Test Cases ***

open my browser
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    1

Log In
#    click element    //*[@id="Primary_Sidebar-Already_Registered-Login"]
    Click Element    //*[@id="mynavbar"]/div/a[1]
    Switch Window    NEW
    input text    id:inputEmail    ${email}
    input password    id:inputPassword    ${password}
    Execute JavaScript    window.scrollBy(0, 30)
    sleep    30s
    Execute JavaScript    window.scrollBy(0, 900)
    click button    //button[@id='login']
Billing
    click element    //*[@id="Primary_Navbar-Billing"]/a
    click element    //*[@id="Primary_Navbar-Billing-My_Invoices"]/a
    click element    //a[@class='btn btn-success btn-sm btn-block']
    Execute JavaScript    window.scrollBy(0, 900)