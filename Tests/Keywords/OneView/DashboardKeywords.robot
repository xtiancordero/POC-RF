*** Settings ***
Library     SeleniumLibrary
Resource    ${CURDIR}${/}..\\..\\..\\Resource\\Variables.robot
Resource    ${CURDIR}${/}..\\..\\Actions\\OneView\\Dashboard.robot



*** Keywords ***

Check Collateral status
    Margin OK displayed
    Notify displayed
    Margin Call displayed
    Close Out displayed
    Total Facilities matched

Check Margin Ratio and Facility Utilization



#Check Average Margin Ratio graph
#Check Upcoming Expiring Pledges
#Check Upcoming Credit Limit Review Date
#Check Upcoming Expiring Facilities
#Check Credit Activity page
