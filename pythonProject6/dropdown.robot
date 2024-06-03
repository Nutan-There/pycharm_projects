*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    edge
${url}        https://demoqa.com/select-menu

*** Test Cases ***
Testing radio button and checkboxes
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    5s

    # Clicking on the header text to make the menu visible
    Click Element    //*[@id="app"]/div/div/div[2]/div[1]/div/div/div[2]/span/div
    Sleep    2s

    # Clicking the 'Practice Form' link
    Click Element    //*[@id="app"]/div/div/div[2]/div[1]/div/div/div[2]/div
    Sleep    2s

    # Filling information in the form
    Input Text    //input[@id='firstName']    Nutan
    Sleep    2s
    Input Text    //input[@id='lastName']     There
    Sleep    2s
    Input Text    //input[@id='userEmail']    nutan@gmail.com
    Sleep    2s

    # Selecting the 'Female' radio button
    #click button    //input[@id='gender-radio-2']    timeout=10s
    #Click Element    //input[@id='gender-radio-2']
    #Sleep    2s


    # Add additional steps as needed
    input text    //input[@id='userNumber']    9075678965
    # Close the browser
    Close Browser
