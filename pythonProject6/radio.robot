*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  edge
${url}  https://demo.automationtesting.in/Register.html
*** Test Cases ***
Testing Radio Buttons and check Boxes
    open browser   ${url}   ${browser}
    maximize browser window
    sleep    3
    select radio button  radiooptions    Male
