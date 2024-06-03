*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}        edge
${URL}            http://automationexercise.com
${REVIEWER_NAME}  Nutan There
${REVIEWER_EMAIL}    nutanithere2011@gmail.com
${REVIEW_TEXT}    product is very good

*** Test Cases ***
Test Case 21: Add Review on Product
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    1

#Click on 'Products' button
    click element    //a[@href='/products']

#Verify user is navigated to ALL PRODUCTS page successfully
    sleep    2
#Click on 'View Product' button
    click element    //a[@href='/product_details/1']
#Verify 'Write Your Review' is visible
    sleep    1
#Enter name, email and review
    input text    //*[@id="name"]   ${REVIEWER_NAME}
    input text    id=email    ${REVIEWER_EMAIL}
    input text    id=review    ${REVIEW_TEXT}

#Click 'Submit' button
    click element    id=button-review

#Verify success message 'Thank you for your review.'