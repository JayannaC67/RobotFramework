*** Settings ***
Documentation    Tags in Robot Framework
*** Variables ***
*** Test Cases ***
Test Case 1
    [tags]    Smoke
    Log To Console    This is test case 1
Test Case 2
    [tags]    Regression
    Log To Console    This is test case 2
Test Case 3
    [tags]    Regression
    Log To Console    This is test case 3
Test Case 4
    [tags]    Smoke
    Log To Console    This is test case 4
Test Case 5
    [tags]    Sanity
    Log To Console    This is test case 5

Test Case 6
    [tags]    Jayanna
    Log To Console    This is test case 6
*** Keywords ***


#command=Command : robot -d results -i Smoke Scripts/Tags.robot
#command to run all cases:robot -d results -i Smoke  Scripts/*.robot