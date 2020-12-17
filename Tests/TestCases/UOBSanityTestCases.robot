*** Settings ***
Library     SeleniumLibrary
Resource    ${CURDIR}${/}..\\Keywords\\OneView\\LoginKeywords.robot
Resource    ${CURDIR}${/}..\\Keywords\\OneView\\SecurityKeywords.robot
Resource    ${CURDIR}${/}..\\Keywords\\OneView\\DashboardKeywords.robot
Test Setup       Set Automation Suite
Test Teardown    Handle Teardown

*** Test Cases ***
Scenario: TC1.1 OneView Login and Logout
    [Documentation]    TC1.1 OneView Login and Logout
    [Tags]             All  Sanity  Login
    User log in as 'Credit User 1' and logout from UOB OneView
    User log in as 'Credit User 2' and logout from UOB OneView
    User log in as 'Credit User 3' and logout from UOB OneView

Scenario: TC1.2.1 User Management
    [Documentation]    TC1.2.1 User Management
    [Tags]             All  Sanity  User1
    Test Header        This test case validates that User Management displays different types of users.
    User log in as 'Credit User 3' in UOB OneView
    Access User Role Maintenance page
    Validate that page shows different user types

Scenario: TC1.2.2 Enable and Disable User
    [Documentation]    TC1.2.2 Enable and Disable User
    [Tags]             All  Sanity  User
    Test Header        This test case validates that User can be enable/disable successfully.
    User log in as 'Credit User 3' in UOB OneView
    Search and enable user
    Validate that enabled user can log in
#    Search and disable user
#    Validate that disabled user cannot log in


Scenario: TC1.3 Dashboard Management
    [Documentation]    TC1.3 Dashboard Management
    [Tags]             All  Sanity  Dashboard
    Test Header        This test case validates OneView Dashboard functionalities.
    User log in as 'Credit User 2' in UOB OneView
    Check Collateral status
#    Check Margin Ratio and Facility Utilization
#    Check Average Margin Ratio graph
#    Check Upcoming Expiring Pledges
#    Check Upcoming Credit Limit Review Date
#    Check Upcoming Expiring Facilities
#    Check Credit Activity page

#"Dashboard should show correct collateral status Margin OK, Notify, Margin Call or Close Out with respect to the total number of facilities.
#
#Clicking on a collateral status navigates users to the Credit Activity page displaying all portfolios with the selected status"
#Dashboard Charts should reflect the correct Margin Ratio and Facility Utilization
#Average Margin Ratio graph displays the correct data and can be updated by selecting from the Date drop-down menu
#Upcoming Expiring Pledges must be able to show pledges within  the next 2 days up to 1 month
#Upcoming Credit Limit Review Dates must display instruments /portfolio with credit review date within the next 2 days up to 1 month
#Upcoming Expiring Facilities must:
#a. Show facility packages of which one or more are scheduled to expire soon
#b. When the facility expires, it must not show in the Credit Limit Screen.

#Scenario: TC1.4 Credit Activity
#Margin Ratio toggles are working and displays the correct values
#"Page displays the correct data columns:
#Client Portfolio
#Market Value
#Loanable Value
#Exposure
#Available/Shortfall
#Margin Ratio
#Facility LTV
#Pledge Relationship
#Days in Status
#Watchlist"
#User can navigate to the Live 2 and Archive pages
#Data in Credit Activity table changes based on the selected user profile
#Market Value must be verifiable to be correct
#"Loanable Value must be verifiable to be correct e.g. Market Value > Loanable value always
#Exposure should match Available/Shortfall"
#Margin Ratio must be verifiable to be correct to be Loanable Value / Market Value
#Facility LTV must have Exposure/Market Value
#Collateral Status must display the correct color indicator (e.g., green if Margin > LTV, yellow if…., red if….)
#Pledge icon is only displayed if portfolio has a pledge relationship. Clicking on the icon displays the portfolio's pledge graph and pledging details.
#Days in Status: there must be values that correctly correspond to days of the current status of both in red and yellow.
#Watchlist feature works correctly - clicking/unclicking on the Watchlist icon will add/remove a portfolio from the watchlist. The Watchlist indicator reflects the correct number of portfolios under the watchlist.
#Export to Excel feature is working as expected and exported file displays the correct columns
#User is redirected to the Lending Summary page when clicking on a portfolio from the table.

#Scenario: TC1.5 Live 2
#Page displays the same data columns as Live 1
#Margin Ratio toggles are working and displays the correct values
#Show All and Watchlist features are working as expected
#Pledge icon is only displayed if portfolio has a pledge relationship. Clicking on the icon displays the portfolio's pledge graph and pledging details.
#Export to Excel feature is working as expected and exports the correct columns
#User is redirected to the Lending Summary page when clicking on a portfolio from the table.

#OnePass just have 7 Selenium commands
#Automation Framework should be flexible to cater to the AUT - ex. user accounts, dates, test data,
#Validation commands are heavily used in automation - OnePass have only one validation command - Compare
#Automation Framework should handle test data and scripts separately
#Reusable functions/keywords
#Less maintenance
#Agile-friendly
