*** Settings ***
Library     SeleniumLibrary
Resource    ${CURDIR}${/}..\\..\\..\\Resource\\Variables.robot
Resource    ${CURDIR}${/}..\\..\\Actions\\OneView\\Login.robot


*** Keywords ***
Login as '${userType}' in UOB OneView
    Open new browser tab to UOB OneView
    Log in as  ${userType}

Login as '${userType}' and logout from UOB OneView
    Report Sub Header  User log in as '${userType}' in UOB OneView
    Open Chrome Browser To UOB OneView
    Login as  ${userType}
    Login in successfully
    Logout from UOB OV

Logout from UOB OV
    Logout

