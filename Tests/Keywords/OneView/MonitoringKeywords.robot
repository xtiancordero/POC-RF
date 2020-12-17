*** Settings ***
Library     SeleniumLibrary
Resource    ${CURDIR}${/}..\\..\\..\\Resource\\Variables.robot
Resource    ${CURDIR}${/}..\\..\\Actions\\OneView\\Monitoring.robot


*** Keywords ***
Validate that created transaction was reflected
    Go to Liabilities screen
    Validate transaction

