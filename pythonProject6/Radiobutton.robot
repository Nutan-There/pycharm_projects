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
    Click Element    //div[@class='header-text']
    Sleep    2s

    # Clicking on the 'Checkbox' menu item
    Click Element    //*[@id="item-1"]
    Sleep    2s

    # Expanding the tree node with the checkbox
    Click Element    //button[@class='rct-collapse rct-collapse-btn']
    Sleep    2s

    # Selecting the checkbox
    Wait Until Page Contains Element    //*[@id="tree-node"]/ol/li/span/label/span[1]/svg/path    timeout=30s


    # Close the browser
    Close Browser
