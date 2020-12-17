*** Settings ***
Documentation           A Resource file which contains the collection of variables
Variables               ${utilities_folder_path}CommonConstants.py

*** Variables ***
#directories
${report_folder}                ${CURDIR}${/}..\\Test Execution\\
${drivers}                      ${CURDIR}${/}..\\Drivers\\
${resource_folder_path}         ${CURDIR}${/}..\\Resource\\
${utilities_folder_path}        ${CURDIR}${/}..\\Libraries\\
${actions_folder_path}          ${CURDIR}${/}..\\Tests\\Actions\\OneView
${keywords_folder_path}         ${CURDIR}${/}..\\Tests\\Keywords\\
${webelement_folder_path}       ${resource_folder_path}\\Locators\\
${Variables}                    ${CURDIR}${/}..\\Resource\\Variables.robot

${OVWebElements}                ${CURDIR}${/}..\\Resource\\Locators\\OVWebElements.robot
${WUIWebElements}               ${CURDIR}${/}..\\Resource\\Locators\\WUIWebElements.robot
${Utilities}                    ${CURDIR}${/}..\\Libraries\\Utilities.py
${ReportMaker}                  ${CURDIR}${/}..\\Libraries\\ReportMaker.py
${LoginActions}                 ${CURDIR}${/}..\\Tests\\Actions\\OneView\\Login.robot
${DashboardActions}             ${CURDIR}${/}..\\Tests\\Actions\\OneView\\Dashboard.robot
${SecurityActions}              ${CURDIR}${/}..\\Tests\\Actions\\OneView\\Security.robot
${LoginKeywords}                ${CURDIR}${/}..\\Keywords\\OneView\\LoginKeywords.robot
#urls
${UOBOneView}                   http://172.31.26.44:8080/OACredit/login
${UOBTAPWUI}                    http://172.31.31.222:15050/wui/login
${BaseURL}                      http://172.31.26.44:8080/OACredit
${Liab}                         /script/getLiabilitiesByPortfolio?
${PtfCode}                      portfolioCode=
${PtfClientName}                &clientName=
${PtfFacilityPackage}           &facilityPackage=

#excel directories
${test_data}                    ${CURDIR}${/}..\\Resource\\TestData\\TestData.xlsx
${Blank}


