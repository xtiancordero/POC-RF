*** Settings ***
Library     SeleniumLibrary
Library     ${CURDIR}${/}..\\..\\..\\Libraries\\Utilities.py
Resource    ${CURDIR}${/}..\\..\\..\\Resource\\Variables.robot
Resource    ${CURDIR}${/}..\\..\\Actions\\OneView\\Login.robot
Resource    ${CURDIR}${/}..\\..\\..\\Resource\\Locators\\OVWebElements.robot

*** Keywords ***
Go to Security
    Click element by jS   ${Security}

Go to User Maintenance page
    #Set selenium speed   500ms
    Click element by jS   ${UserMaintenance}
    Take screenshot  User Role Maintenance page

Validate Admin User
    Wait until keyword succeeds   2 min  10sec  Click element   ${UserTypeOrder}
    FOR  ${AdminUserCount}  IN RANGE   175
         ${AdminUserCount}  Get element count   ${AdminUser}
         Run keyword if     ${AdminUserCount}<1  Click element  ${NextPage}
         Exit for loop if   ${AdminUserCount}>=1
    END
    Take screenshot  Admin User

Validate Credit Admin
    FOR  ${CreditAdminCount}  IN RANGE   175
         ${CreditAdminCount}  Get element count   ${CreditAdmin}
         Run keyword if       ${CreditAdminCount}<1  Click element  ${NextPage}
         Exit for loop if     ${CreditAdminCount}>=1
    END
    Take screenshot  Credit Admin

Validate Credit Advisory
    FOR  ${CreditAdvisoryCount}  IN RANGE   175
         ${CreditAdvisoryCount}  Get element count   ${CreditMonitoring}
         Run keyword if          ${CreditAdvisoryCount}<1  Click element  ${NextPage}
         Exit for loop if        ${CreditAdvisoryCount}>=1
    END
    Take screenshot  Credit Advisory

Validate Credit Monitoring
    FOR  ${CreditMonitoringCount}  IN RANGE   175
         ${CreditMonitoringCount}  Get element count   ${CreditMonitoring}
         Run keyword if            ${CreditMonitoringCount}<1   Click element  ${NextPage}
         Exit for loop if          ${CreditMonitoringCount}>=1
    END
    Take screenshot  Credit Monitoring

Validate CSA
    FOR  ${CSACount}   IN RANGE   175
         ${CSACount}   Get element count   ${CSA}
         Run keyword if     ${CSACount}<1  Click element  ${NextPage}
         Exit for loop if   ${CSACount}>=1
    END
    Take screenshot  CSA

Validate Read-Only User
    FOR  ${ReadOnlyUserCount}  IN RANGE   175
         ${ReadOnlyUserCount}  Get element count   ${ReadOnlyUser}
         Run keyword if     ${ReadOnlyUserCount}<1  Click element  ${NextPage}
         Exit for loop if   ${ReadOnlyUserCount}>=1
    END
    Take screenshot  Read-Only User

Search user
    #Set selenium speed  500ms
    ${User_testData}    Get cell text   ${testdata}   TC1.2.2   User    TestData
    Input text          ${SearchBar}    ${User_testData}
    ${User_xpath}       Catenate        ${Xpath}    '${User_testData}']
    Wait until element is visible       ${User_xpath}
    ${User_found}       Run keyword and return status   Page should contain element  ${User_xpath}
    Set test variable   ${User_testData}
    Set test variable   ${User_found}

Enable or disable user
    ${userDisabled}  Run keyword and return status   Run Keyword And Continue On Failure
    ...  Page should contain element  ${EnableButton}
    Run keyword if   '${userDisabled}'=='True'
    ...   Run keywords          Enable user   AND  Disable user
    ...   ELSE  Run keywords    Disable user  AND  Enable user

Enable user
    ${userDisabled}  Run keyword and return status  Run Keyword And Continue On Failure
    ...  Page should contain element  ${EnableButton}
    Run keyword if      '${userDisabled}'=='False'
    ...  Run keywords   Click element    ${DisableButton}
    ...  AND   Click element   ${YesButton}   AND  Search user
    Click element       ${EnableButton}
    Click element       ${YesButton}
    Search user
    Take screenshot     Enabled ${User_testData} user
    Page should contain element     ${DisableButton}

Disable user
    Click element       ${DisableButton}
    Click element       ${YesButton}
    Search user
    Take screenshot     Disabled ${User_testData} user
    Page should contain element     ${EnableButton}

Click element by jS
    [Arguments]         ${xpath}
    Execute javascript  document.evaluate("${xpath}",document.body,null,9,null).singleNodeValue.click();