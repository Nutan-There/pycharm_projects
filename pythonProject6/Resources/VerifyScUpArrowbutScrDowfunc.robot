*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}        edge
${URL}            http://automationexercise.com

*** Test Cases ***
Test Case 25: Verify Scroll Up using 'Arrow' button and Scroll Down functionality
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    2

#Verify that home page is visible successfully
    click element    //*[@id="header"]/div/div/div/div[2]/div/ul/li[1]/a

#Scroll down page to bottom
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)

#Verify 'SUBSCRIPTION' is visible
    wait until element is visible    //*[@id="footer"]/div[1]/div/div/div[2]/div
#Scroll up page to top
   Execute JavaScript    window.scrollTo(0, 0)

#Verify that page is scrolled up and 'Full-Fledged practice website for Automation Engineers' text is visible on screen