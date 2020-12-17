*** Settings ***
Library     SeleniumLibrary
Library     ${CURDIR}${/}..\\..\\Libraries\\Utilities.py
Library     ${CURDIR}${/}..\\..\\Libraries\\CountryCode.py
Resource    ${resource_folder_path}\\Variables.robot
Resource    ${resource_folder_path}\\Locators\\WebElements.robot

*** Keywords ***
