*** Settings ***
Library     SeleniumLibrary
Library     ${CURDIR}${/}..\\..\\..\\Libraries\\Utilities.py
Library     ${CURDIR}${/}..\\..\\..\\Libraries\\ReportMaker.py
Resource    ${CURDIR}${/}..\\..\\..\\Resource\\Locators\\OVWebElements.robot
Resource    ${CURDIR}${/}..\\..\\..\\Resource\\Variables.robot

*** Keywords ***
Open Chrome Browser To UOB OneView
    Go To    ${UOBOneView}
    Set Selenium Implicit Wait  120s

Open new browser tab to UOB OneView
    Execute javascript  window.open('')
    Get window titles
    Select window   title=undefined
    Go to  ${UOBOneView}

Login as
    [Arguments]       ${userType}
    ${OUBOVUsername}    Get cell text    ${testdata}    Credentials    ${userType}    UserName
    ${OUBOVPassword}    Get cell text    ${testdata}    Credentials    ${userType}    PassWord
    Click element   ${Username}
    Input text      ${UsernameInputBox}      ${OUBOVUsername}
    Click element   ${Password}
    Input password  ${PasswordInputBox}      ${OUBOVPassword}
    Click button    ${LoginButton}
    Wait until element is not visible   ${loadingIndicator}  60s
    Set test variable  ${OUBOVUsername}
    Set test variable  ${userType}
    Take Screenshot with text    Signed in as ${userType}

Logged in successfully
    ${loginIndicator}  Catenate    ${xpathText}   '${OUBOVUsername}')]
    Wait until element is visible  ${loginIndicator}
    Take Screenshot with text      Signed in successfully as ${OUBOVUsername}

Log in a locked user
    [Arguments]       ${userType}
    ${OUBOVUsername}    Get cell text    ${testdata}    Credentials    ${userType}    UserName
    ${OUBOVPassword}    Get cell text    ${testdata}    Credentials    ${userType}    PassWord
    Click element   ${Username}
    Input text      ${UsernameInputBox}      ${OUBOVUsername}
    Click element   ${Password}
    Input text      ${PasswordInputBox}      ${OUBOVPassword}
    Click button    ${LoginButton}
    Page should contain element  ${UserLockedOut}
    Take Screenshot  User ${User_testData} was locked out

Logout
    ${SignedinStatus}  Run keyword and return status  Element should be visible  ${logout_button}
    Click element   ${logout_button}
    Element should be visible   ${logoutIndicator}

Set Automation Suite
    Create Webdriver    Chrome    executable_path=${drivers}\\chromedriver.exe
    Maximize Browser Window
    Log To Console  \nTest Document: ${TEST DOCUMENTATION}
    Set Report Header   ${TESTNAME}
    Set Test summary    ${TEST DOCUMENTATION}
    Set Directory

Report Sub Header
    [Arguments]            ${SubHeader}
    Set Report Sub Header  ${SubHeader}

Handle Teardown
    Close browser
    Save Document Teardown

Set Directory
    ${filePath}=      Catenate  ${report_folder}${timestamp}\\${TESTNAME}
    Set Suite Variable  ${getFilePath}  ${filePath}
    Set Screenshot Directory  ${getFilePath}

Save Document Teardown
    Save Document   ${getFilePath}

Take Screenshot
    [Arguments]     ${imageName}
    Capture Page Screenshot     ${imageName}.png
    ${imagePath}=   Catenate  ${getfilePath}\\${imageName}
    Put Screenshot   ${imagePath}  ${imageName}

Take Screenshot with text
    [Arguments]     ${imageName}
    Capture Page Screenshot     ${imageName}.png
    ${imagePath}=   Catenate  ${getfilePath}\\${imageName}
    Put Screenshot with text   ${imagePath}  ${imageName}

Set Test summary
    [Arguments]      ${TEST DOCUMENTATION}
    Put text         ${TEST DOCUMENTATION}

Click element by jS
    [Arguments]         ${xpath}
    Execute javascript  document.evaluate("${xpath}",document.body,null,9,null).singleNodeValue.click();

Focus element into view by jS
    [Arguments]         ${xpath}
    Execute JavaScript    window.document.evaluate("${xpath}", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.scrollIntoView(true);