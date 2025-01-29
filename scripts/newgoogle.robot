*** Settings ***

Library        SeleniumLibrary

Library          SeleniumLibrary



*** Variables ***

#${BROWSER}        chrome
${URL}            https://www.letskodeit.com/practice

*** Test Cases ***
Test Radio Button
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    3 seconds

    Radio Button Should Not Be Selected    cars
    Sleep    2
    Select Radio Button    cars    bmw
    Log    The bmw radio button is selected
    Sleep    2
    Select Radio Button    cars    benz
    Select Radio Button    cars    honda
    Sleep    2
    Radio Button Should Be Set To    cars    honda

Test Checkboxes
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    2 seconds
    Checkbox Should Not Be Selected    xpath://legend[text()='Checkbox Example']/../label/input[@type='checkbox']
    Log    The checkboxes not selected
    Sleep    2
    Select Checkbox    id=benzcheck
    Sleep    2
    Select Checkbox    id=hondacheck
    Sleep    2
    Select Checkbox    xpath://legend[text()='Checkbox Example']/../label/input[@type='checkbox'][1]
    Sleep    2
    ${Checkbox_count}    Get Element Count    //legend[text()='Checkbox Example']/../label/input[@type='checkbox']
    Should Be True    ${Checkbox_count}==3

    
