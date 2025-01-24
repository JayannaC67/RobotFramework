*** Settings ***
Library          SeleniumLibrary
Library    support.py
Library    Collections
Variables    ../Locators/Herokoo.py
Library    XML

*** Variables ***

${Browser}      Chrome
#${URL}            https://www.Katalon.com/
#${URL1}           https://www.google.com/

*** Test Cases ***
Alerts handling with pageobject concept
    ${url}=    support.read_xml    herokuapp
    Open Browser    ${url}    ${Browser}
    Sleep           2
    Maximize Browser Window
    Sleep    2
    Click Element    ${java_alert}
    Sleep    3
    Click Element    ${JavascriptButton}
    Sleep    3
    ${Text}=    Handle Alert
    Sleep    5
    Click Element    ${Js_confirm}
    Sleep    3
    ${Text}=    Handle Alert    action=DISMISS
    Sleep    3
    Click Element    ${Js_prompt}
    Sleep    3
    Input Text Into Alert    alerttext
    Sleep    3
    Close Browser

Window handling
    ${URL}=    support.Read Xml    applicationurl1
    Open Browser    ${URL}    ${BROWSER}
    Sleep    2
    Maximize Browser Window
    Click Element    ${Open_window}
    Sleep    3
    ${win}=    Get Window Handles
    Switch Window    ${win}[1]
    Element Should Be Visible    //a[text() ='Sign In']
    Click Element    //a[text() ='Sign In']
    Sleep    3
    Close Window
    Switch Window    ${win}[0]
    Sleep    3
    Close Browser


Iframe handling
    ${URL}=    support.Read Xml    url1
    Open Browser    ${URL}    ${BROWSER}
    Sleep    2
    Maximize Browser Window



#command_to_execute=robot -d  Report scripts/Alerts_handling.robot
