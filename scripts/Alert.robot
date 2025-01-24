*** Settings ***
Library          SeleniumLibrary

*** Variables ***

${Browser}      Chrome
${URL}            https://the-internet.herokuapp.com/
#${URL1}           https://www.google.com/

*** Test Cases ***
Open Saucedemo
    Open Browser    ${URL}    ${BROWSER}
    Sleep           3 seconds
    Close Browser
    Maximize Browser Window
    Sleep    2
