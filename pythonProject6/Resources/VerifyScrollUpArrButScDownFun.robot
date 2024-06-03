*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}        edge
${URL}            http://automationexercise.com

*** Test Cases ***
Test Case 25: Verify Scroll Up using 'Arrow' button and Scroll Down functionality
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.5

#Verify that home page is visible successfully

#Scroll down page to bottom
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)

#Verify 'SUBSCRIPTION' is visible

#Click on arrow at bottom right side to move upward
    click element    //*[@id="scrollUp"]

#Verify that page is scrolled up and 'Full-Fledged practice website for Automation Engineers' text is visible on screen
    close browser