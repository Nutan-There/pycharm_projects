*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN URL}   https://phptravels.org/login
${BROWSER}      edge
${first_Name}    Nutan
${last_name}    There
${phone_no}    9075850736
${address}    81,Durga Nagar Manewada Besa Road Nagpur
${city}    Nagpur
${state}    Maharashtra
${postcode}    440034
${country}    India
${email}     nutan-raju.there@capgemini.com
${password}    Nutan@1234
${confirm_pass}    Nutan@1234

*** Test Cases ***
open my browser
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    1
Log In
#    click element    //*[@id="Primary_Sidebar-Already_Registered-Login"]
#    Click Element    //*[@id="mynavbar"]/div/a[1]
#    Switch Window    NEW
    input text    id:inputEmail    ${email}
    input password    id:inputPassword    ${password}
    Execute JavaScript    window.scrollBy(0, 30)
    #manually click captcha
    sleep    30s
    Execute JavaScript    window.scrollBy(0, 900)
    click button    //button[@id='login']

service
    click element  //*[@id="Primary_Navbar-Services"]/a
    click element    //li[@id='Primary_Navbar-Services-Order_New_Services']
    click element    //a[@id='product2-order-button']
    click element    //button[@id='btnCompleteProductConfig']
    click element    //a[@id='checkout']
    #click element    //button[@id='btnAlreadyRegistered']
#    input text    //input[@id='inputLoginEmail']    ${email}
#    input text    //input[@id='inputLoginPassword']    ${password}
#    click element    //button[@id='btnExistingLogin']

#    Input Text    //input[@id='inputFirstName']   ${first_Name}
#    Input Text    //input[@id='inputLastName']    ${last_name}
#    Input Text    //input[@type='email']    nutanthere@gmail.com
##    click element    //*[@id="containerNewUserSignup"]/div[1]/div/div/div[4]/div/div/div/div/div[2]
##    Execute JavaScript    window.scrollBy(0, 63)
##    click element    //*[@id="containerNewUserSignup"]/div[1]/div/div/div[4]/div/div/div/ul/li[102]/span[1]
#    Input Text    //input[@type='tel']    ${phone_no}    clear=True
#    Input Text    //input[@id='inputAddress1']    ${address}
#
#    Input Text    //input[@name='city']    ${city}
#    Input Text   //input[@name='state']    ${state}
#
#    Input Text    //input[@name='postcode']    ${postcode}
#    Select From List By Label    //select[@name='country']    India
#    click element    //*[@id="containerNewUserSignup"]/div[3]/div[4]/div/div/div/div/div[2]
#    Execute JavaScript    window.scrollBy(0, 31)
#    click element    //*[@id="containerNewUserSignup"]/div[3]/div[4]/div/div/div/ul/li[102]/span[1]
#    input text    //input[@id='customfield2']    ${phone_no}
##    Input Text    //input[@name='password']    Nutan@20
##    Input Text    //input[@id='inputNewPassword2']    ${confirm_pass}
#    Execute JavaScript    window.scrollBy(0, 60)
#    click element   //*[@id="frmCheckout"]/div[13]/div/div
#
#    click element    //button[@id='btnCompleteOrder']
     input text    //*[@id="frmCheckout"]/div[13]/div/div/textarea    nothing
     sleep    20s
     click element    //button[@id='btnCompleteOrder']
     Execute JavaScript    window.scrollBy(0, 60)

