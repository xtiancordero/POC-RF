*** Settings ***
Library     SeleniumLibrary
Library     ${CURDIR}${/}..\\..\\..\\Libraries\\Utilities.py
Library     ${CURDIR}${/}..\\..\\..\\Libraries\\ReportMaker.py
Resource    ${CURDIR}${/}..\\..\\..\\Resource\\Variables.robot
Resource    ${resource_folder_path}\\Locators\\WUIWebElements.robot
Resource    ${CURDIR}${/}..\\..\\Actions\\WUI\\Login.robot

*** Keywords ***
Signin as '${userType}' in UOB WUI
    Open Chrome Browser To UOB TAP WUI Dev Environment
    Signin as  ${userType}

