*** Keywords ***
Open Browser And Maximize
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}`
    Maximize Browser Window
    Set Selenium Speed    1

User Sign Up
    Click Element    ${SIGNUP_BUTTON}
    Switch Window    NEW
    Wait Until Element Is Visible    ${FIRST_NAME_INPUT}
    Input Text    ${FIRST_NAME_INPUT}    ${FIRST_NAME}
    Input Text    ${LAST_NAME_INPUT}    ${LAST_NAME}
    Input Text    ${EMAIL_INPUT}    ${EMAIL}
    # Additional steps for handling dropdown and scrolling
    Input Text    ${PHONE_NO_INPUT}    ${PHONE_NO}    clear=True
    Input Text    ${ADDRESS_INPUT}    ${ADDRESS}
    Input Text    ${CITY_INPUT}    ${CITY}
    Input Text    ${STATE_INPUT}    ${STATE}
    Input Text    ${POSTCODE_INPUT}    ${POSTCODE}
    Select From List By Label    ${COUNTRY_SELECT}    ${COUNTRY}
    Input Text    ${PASSWORD_INPUT}    ${PASSWORD}
    Input Text    ${CONFIRM_PASSWORD_INPUT}    ${CONFIRM_PASS}
    # Execute JavaScript    window.scrollBy(0, 60)
    # Click Element    // Complete the sign up steps

User Login
    Click Element    ${LOGIN_BUTTON}
    Switch Window    NEW
    Input Text    ${LOGIN_EMAIL_INPUT}    ${EMAIL}
    Input Password    ${LOGIN_PASSWORD_INPUT}    ${PASSWORD}
    Execute JavaScript    window.scrollBy(0, 30)
    # Manually handle captcha
    Sleep    30s
    Click Button    ${LOGIN_SUBMIT_BUTTON}
