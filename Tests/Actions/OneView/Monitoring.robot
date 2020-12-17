*** Settings ***
Library     SeleniumLibrary
Library     ${CURDIR}${/}..\\..\\..\\Libraries\\Utilities.py
Resource    ${CURDIR}${/}..\\..\\..\\Resource\\Variables.robot
Resource    ${CURDIR}${/}..\\..\\Actions\\OneView\\Login.robot
Resource    ${CURDIR}${/}..\\..\\..\\Resource\\Locators\\OVWebElements.robot

#*** Variables ***
#${Portfolio_testData}  88-5132020-18
#${Instrument_WUI}      IRD270520SGDIRF05312
#${PtfClientName_testData}  DENOM.990004862193TEST
#${PtfFacilityPackage_testData}   GENERIC

*** Keywords ***
View Credit Activity
    ${NoDashboard}   Run keyword and return status   Element should be visible   ${SearchBar}
    Run keyword if   '${NoDashboard}'=='False'   Run keywords  Click element by jS   ${Monitoring}  AND
    ...   Click element by jS    ${CreditActivity}

Search Porftolio
    Input text      ${SearchBar}   ${Portfolio_testData}
    ${Ptf_xpath}    Catenate       ${Xpath_contains}${Portfolio_testData}')])[1]
    Wait until element is visible       ${Ptf_xpath}  30s
    Click element by js   ${Ptf_xpath}

View Liabilities screen
    Click element by js   ${Liabilities}

Go to Liabilities screen
    ${Portfolio_testData}           Get cell text   ${testdata}   OUBOV_TC_01  Portfolio  Test Data 1
    ${PtfClientName_testData}       Get cell text   ${testdata}   OUBOV_TC_01  Portfolio  Test Data 2
    ${PtfFacilityPackage_testData}  Get cell text   ${testdata}   OUBOV_TC_01  Portfolio  Test Data 3
    ${link1}  Catenate  ${BaseURL}${Liab}
    ${link2}  Catenate  ${PtfCode}${Portfolio_testData}
    ${link3}  Catenate  ${PtfClientName}${PtfClientName_testData}
    ${link4}  Catenate  ${PtfFacilityPackage}${PtfFacilityPackage_testData}
    ${LiabScreenURL}   Catenate  ${link1}${link2}${link3}${link4}
    Go to   ${LiabScreenURL}
    Wait until element is not visible      ${loadingText}  30s
    Take Screenshot with text  Liabilities screen

Validate transaction
    ${Inst_xpath}    Catenate  ${Xpath_span}${Instrument_WUI}')]
    ${Inst_xpathjs}  Catenate  ${Xpath_js}${Instrument_WUI}')]
    Focus element into view by jS  ${Inst_xpathjs}
    ${InstXpathVisible}  Run keyword and return status  Element should be visible   ${Inst_xpath}
    Run keyword if  '${InstXpathVisible}'=='True'  Run keywords  Set test message  ${Instrument_WUI} is displayed
    ...  AND  Take Screenshot with text      Instrument ${Instrument_WUI} is displayed
    ...  ELSE  Fail  Instrument ${Instrument_WUI} is not displayed
