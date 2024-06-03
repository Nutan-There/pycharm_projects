*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN URL}    https://phptravels.com/demo/
${BROWSER}      edge
${email}    nutan-raju.there@capgemini.com
${password}    Nutan@1234
${subject}    inquiry
${Message}    pending bill
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



support
    click element    //*[@id="Primary_Navbar-Support"]/a
    click element    //*[@id="Primary_Navbar-Support-Tickets"]/a
    Execute JavaScript    window.scrollBy(0, 900)
    click element    //*[@id="Secondary_Sidebar-Support-Open_Ticket"]

Home
    click element    //*[@id="Primary_Navbar-Home"]/a

open ticket
    click element    //*[@id="Primary_Navbar-Open_Ticket"]/a
    click element    //*[@id="main-body"]/div/div[1]/div/div/div/div[2]/div/p[3]/a
    input text    //input[@id='inputSubject']    ${subject}
    input text    //*[@id="inputMessage"]    ${Message}
    click element    //button[@id='openTicketSubmit']

Affiliates
    click element    //*[@id="Primary_Navbar-Affiliates"]/a
#    click element    //button[@class='btn btn-success btn-lg px-5 py-2']
#    Execute JavaScript    window.scrollBy(0, 500)

logout
    click element    //*[@id="Secondary_Navbar-Account"]/a
    click element    //*[@id="Secondary_Navbar-Account-Logout"]/a