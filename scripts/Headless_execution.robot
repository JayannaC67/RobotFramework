*** Settings ***
Library          SeleniumLibrary

*** Variables ***

#${Browser}      HeadlessChrome
${URL}            https://demo.automationtesting.in/Frames.html
${URL1}           https://www.google.com/

*** Test Cases ***
Open Iframe
    Open Browser    ${URL1}    ${BROWSER}
    Sleep           3 seconds
    Maximize Browser Window
    Close Browser




