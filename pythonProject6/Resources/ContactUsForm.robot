*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}        edge
${URL}            http://automationexercise.com
${NAME}           John Doe
${EMAIL}          john.doe@example.com
${SUBJECT}        Inquiry
${MESSAGE}        This is a test message.
${FILE_PATH}      C:\Users\NTHERE\Downloads\19 jan.pdf
*** Test Cases ***
Test Case 6: Contact Us Form
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.5

    # Test Step 1-3: Verify Home Page
    #Click Element    xpath=//*[@id="header"]/div/div/div/div[2]/div/ul/li[1]/a

    # Test Step 4-5: Click on 'Contact Us' button
    Click Element    //*[@id="header"]/div/div/div/div[2]/div/ul/li[8]/a

    # Test Step 6: Verify 'GET IN TOUCH' is visible
    #Wait Until Page Contains    GET IN TOUCH

    # Test Step 7: Enter details in the Contact Us form
    Input Text    //input[@data-qa='name']    ${NAME}
    Input Text    //input[@data-qa='email']    ${EMAIL}
    Input Text   //input[@data-qa='subject']   ${SUBJECT}
    Input Text    id=message    ${MESSAGE}

    # Upload file

    #Choose File    //input[@name='upload_file']  ${FILE_PATH}

    # Test Step 8: Click 'Submit' button
    Click Element    //input[@type='submit']

    # Test Step 9: Handle alert (click OK)
    Handle Alert    accept

    # Test Step 10: Verify success message
    #Wait Until Page Contains    Success! Your details have been submitted successfully.

    # Test Step 11: Click 'Home' button
    Click Element    //a[@class='btn btn-success']

    # Verify that landed to home page successfully
    #Wait Until Page Contains    Home Page

    # Close the browser
    Close Browser
