*** Settings ***
Documentation     NopCommerce Demo Site Test
Library           SeleniumLibrary

*** Variables ***
${Browser}        Edge
${URL}            https://demo.nopcommerce.com/

*** Test Cases ***
Open NopCommerce Site
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window

Search Product
    Input Text      //input[@id='small-searchterms']    Laptops
    Click Button    //button[@class='button-1 search-box-button']


