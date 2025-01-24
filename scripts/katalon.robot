*** Settings ***
Library          SeleniumLibrary
Library    support.py
Variables    ../Locators/Katalon.py

*** Variables ***

${Browser}      Chrome
#${URL}            https://www.Katalon.com/
#${URL1}           https://www.google.com/

*** Test Cases ***
Katalonstudio with pageobject concept
    ${url}=    support.reading_xml   applicationurl1
    Open Browser    ${url}    ${Browser}
    Sleep           2
    Maximize Browser Window
    Sleep    2
    Element Should Be Visible    ${katalon_logo}
    Log    Logo is visible

    Close Browser
