*** Settings ***
Library     SeleniumLibrary
Library     ${CURDIR}${/}..\\..\\..\\Libraries\\Utilities.py
Library     ${CURDIR}${/}..\\..\\..\\Libraries\\ReportMaker.py
Resource    ${CURDIR}${/}..\\..\\..\\Resource\\Variables.robot
Resource    ${resource_folder_path}\\Locators\\WUIWebElements.robot
Resource    ${CURDIR}${/}..\\..\\Actions\\WUI\\OrderMngmt.robot


*** Keywords ***
Create Buy Put Option Double Knout Out FXO transaction
    Create FX Options Order
    Get test data  OUBOV_TC_01
    Create FXO Order
    Submit order
    View FX Option order

Create Sell Call Option Double Knout In FXO transaction
    Create FX Options Order
    Get test data  OUBOV_TC_02
    Create FXO Order
    Submit order
    View FX Option order