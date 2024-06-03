*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN URL}    https://phptravels.com/demo/
${BROWSER}      edge
${first_Name}    Nutan
${last_name}    There
${phone_no}    9075850736
${address}    81,Durga Nagar Manewada Besa Road Nagpur
${city}    Nagpur
${state}    Maharashtra
${postcode}    440034
${country}    India
${email}    nutanthere@gmail.com
${password}    Nutan@1234
${confirm_pass}    Nutan@1234

*** Test Cases ***
open my browser
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    1

Sign Up
    Click Element    //*[@id="mynavbar"]/div/a[2]
    Switch Window    NEW
    Wait Until Element Is Visible    //input[@placeholder='First Name']
    Input Text    //input[@id='inputFirstName']    ${first_Name}
    Input Text    //input[@id='inputLastName']    ${last_name}
    Input Text    //input[@type='email']    ${email}
    click element    //*[@id="containerNewUserSignup"]/div[1]/div/div/div[4]/div/div/div/div/div[2]
    Execute JavaScript    window.scrollBy(0, 63)
    click element    //*[@id="containerNewUserSignup"]/div[1]/div/div/div[4]/div/div/div/ul/li[102]/span[1]
    Input Text    //input[@type='tel']    ${phone_no}    clear=True

    Input Text    //input[@id='inputAddress1']    ${address}

    Input Text    //input[@name='city']    ${city}
    Input Text   //input[@name='state']    ${state}

    Input Text    //input[@name='postcode']    ${postcode}
    Select From List By Label    //select[@name='country']    India
    Input Text    //input[@name='password']    ${password}
    Input Text    //input[@name='password2']    ${confirm_pass}
    Execute JavaScript    window.scrollBy(0, 60)
    Click Element    //*[@id="frmCheckout"]/div[3]/div/div/div/span[1]
    Execute JavaScript    window.scrollBy(0, 200)
#   manually click captcha
    Sleep    20s
    click button    //input[@class='btn btn-large btn-primary']
Log In
    click element    //*[@id="Primary_Sidebar-Already_Registered-Login"]
#    Click Element    //*[@id="mynavbar"]/div/a[1]
#    Switch Window    NEW
    input text    id:inputEmail    ${email}
    input password    id:inputPassword    ${password}
    Execute JavaScript    window.scrollBy(0, 30)
    #manually click captcha
    sleep    30s
    Execute JavaScript    window.scrollBy(0, 900)
    click button    //button[@id='login']

#service
#    click element  //*[@id="Primary_Navbar-Services"]/a
#    click element    //li[@id='Primary_Navbar-Services-Order_New_Services']
#    click element    //a[@id='product2-order-button']
#    click element    //button[@id='btnCompleteProductConfig']
#    click element    //a[@id='checkout']
#    #click element    //button[@id='btnAlreadyRegistered']
##    input text    //input[@id='inputLoginEmail']    ${email}
##    input text    //input[@id='inputLoginPassword']    ${password}
##    click element    //button[@id='btnExistingLogin']
#
#    Input Text    //input[@id='inputFirstName']    ${first_Name}
#    Input Text    //input[@id='inputLastName']    ${last_name}
#    Input Text    //input[@type='email']    ${email}
#
#    Input Text    //input[@type='tel']    ${phone_no}    clear=True
#    Input Text    //input[@id='inputAddress1']    ${address}
#
#    Input Text    //input[@name='city']    ${city}
#    Input Text   //input[@name='state']    ${state}
#
#    Input Text    //input[@name='postcode']    ${postcode}
#    Select From List By Label    //select[@name='country']    India
##    input text    //input[@id='customfield2']    ${phone_no}
##    Input Text    //input[@name='password']    Nutan@20
##    Input Text    //input[@id='inputNewPassword2']    ${confirm_pass}
##    Execute JavaScript    window.scrollBy(0, 60)
#    click element   //*[@id="frmCheckout"]/div[14]/div/div
#
#    click element    //button[@id='btnCompleteOrder']
#
##    click element    //*[@id="Primary_Navbar-Services-My_Services"]/a
##    click element   //*[@id="Primary_Sidebar-My_Services_Status_Filter-Pending"]
##    click element    //*[@id="Secondary_Sidebar-My_Services_Actions-Place_a_New_Order"]
###    Wait Until Element Is Visible    //*[@id="product1-order-button"]    timeout=30s
##    click element    //*[@id="product2-order-button"]
##    click button    //button[@id='btnCompleteProductConfig']
##    Execute JavaScript    window.scrollBy(0, 500)
##    click element    //a[@class='btn btn-success btn-lg btn-checkout']
##    click button    //button[@id='btnCompleteOrder']
##    sleep    3s
###    click element    /html/body/div[1]/div[6]/a[2]
##    Execute JavaScript    window.scrollBy(0, 500)


