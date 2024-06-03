*** Settings ***
Library    SeleniumLibrary
Variables    ../resources/variables.robot
Resource   ../resources/locators.robot
Resource   ../resources/keywords.robot

*** Test Cases ***
Open My Browser
    Open Browser And Maximize    ${LOGIN_URL}    ${BROWSER}

Sign Up
    User Sign Up
    # Additional steps if needed

Log In
    User Login
    # Additional steps if needed


