*** Settings ***
Library     SeleniumLibrary



*** Variables ***



*** Test Cases ***
Google
    open browser    https://www.google.com/ edge executable_path=C:\Program Files\Python312\Scripts\msedgedriver.exe
    maximize browser window
    sleep    10
    close browser


*** Keywords ***

