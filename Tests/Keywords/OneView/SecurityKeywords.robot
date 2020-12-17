*** Settings ***
Library     SeleniumLibrary
Resource    ${CURDIR}${/}\\..\\..\\..\\Resource\\Variables.robot
Resource    ${CURDIR}${/}..\\..\\Actions\\OneView\\Login.robot
Resource    ${CURDIR}${/}..\\..\\Actions\\OneView\\Security.robot


*** Keywords ***
Access User Role Maintenance page
    Report Sub Header  User acess User Role Maintenance page
    Go to Security
    Go to User Maintenance page

Validate that page shows different user types
    Validate Admin User
    Validate Credit Admin
    Validate Credit Advisory
    Validate Credit Monitoring
    Validate CSA
    Validate Read-Only User

Search and enable user
    Report sub header   Search and enable user
    Go to Security
    Go to User Maintenance page
    Search user
    Enable user

Validate that enabled user can log in
    Report sub header   ${User_testData} logged in
    Logout from UOB OV
    Sign in as          ${User_testData}
    Logout
    Sign in as          Credit User 3

Search and disable user
    Report sub header   Search and disable user
    Go to Security
    Go to User Maintenance page
    Search user
    Disable user

Validate that disabled user cannot log in
    Report sub header      User unable to log in
    Logout from UOB OV
    Sign in a locked user  ${User_testData}
