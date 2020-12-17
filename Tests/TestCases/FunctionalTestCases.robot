*** Settings ***
Library          SeleniumLibrary
Resource         ${CURDIR}${/}..\\Keywords\\OneView\\LoginKeywords.robot
Resource         ${CURDIR}${/}..\\Keywords\\WUI\\LoginKeywords.robot
Resource         ${CURDIR}${/}..\\Keywords\\WUI\\OrderMngmtKeywords.robot
Resource         ${CURDIR}${/}..\\Keywords\\OneView\\MonitoringKeywords.robot
Test Setup       Set Automation Suite
Test Teardown    Handle Teardown






*** Test Cases ***
OUBOV_TC_01_Buy Put Option Double Knout Out FXO
    [Documentation]    This test case validates that a Buy Put Option Double Knout Out FXO transaction created
                       ...   in UOB WUI was reflected in UOB OneView after successful transaction
    [Tags]             All  SIT  FXO  DKO
    Signin as 'SCA User' in UOB WUI
    Create Buy Put Option Double Knout Out FXO transaction
    Login as 'Credit User 1' in UOB OneView
    Validate that created transaction was reflected



OUBOV_TC_02_Sell Call Option Double Knout In FXO
    [Documentation]    This test case validates that a Sell Call Option Double Knout In FXO transaction created
                       ...   in UOB WUI was reflected in UOB OneView after successful transaction
    [Tags]             All  SIT  FXO  DKI
    Signin as 'SCA User' in UOB WUI
    Create Sell Call Option Double Knout In FXO transaction
    Login as 'Credit User 2' in UOB OneView
    Validate that created transaction was reflected




















#how long it takes to execute manual test case - 3 to 5 minutes
#how long it takes to execute automation test case - 2
#process to execute - high level
#tools paid/free/open-source
#investment?
#ease of learning
#benefits vs manual/one pass
#flexibility
#reusability
