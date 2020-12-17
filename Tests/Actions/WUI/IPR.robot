*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn
Library     ${CURDIR}${/}..\\..\\Libraries\\Utilities.py
Resource    ${resource_folder_path}\\Variables.robot
Resource    ${resource_folder_path}\\Locators\\WebElements.robot