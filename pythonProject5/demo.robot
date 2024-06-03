*** Settings ***
Library     SeleniumLibrary



*** Variables ***



*** Test Cases ***
Google
    open browser    https://www.google.com/     edge
    maximize browser window
    sleep    10
    close browser


*** Keywords ***


