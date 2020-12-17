*** Settings ***
Library     SeleniumLibrary
Library     ${Utilities}
Library     ${ReportMaker}
Resource    ${Variables}
Resource    ${WUIWebElements}

*** Keywords ***
Open Chrome Browser To UOB TAP WUI Dev Environment
    Go To      ${UOBTAPWUI}
    Set Selenium Implicit Wait  10s

Signin as
    [Arguments]         ${userType}
    ${UOBWUIUsername}    Get cell text    ${testdata}    Credentials    ${userType}    UserName
    ${UOBWUIPassword}    Get cell text    ${testdata}    Credentials    ${userType}    PassWord
    Input text      ${UsernameInputBox}      ${UOBWUIUsername}
    Input text      ${PasswordInputBox}      ${UOBWUIPassword}
    Click button    ${SignInButton}

Terminate other device
    ${TerminateMessage}   Run Keyword And Return Status   Element should not be visible    ${terminate_msg}
    Run keyword if  '${TerminateMessage}'=='False'    Click element   ${ConfirmButton}

Logout from WUI
    ${SignedinStatus}  Run keyword and return status  Element should be visible  ${logout_button}
    Run keyword if     ${SignedinStatus}  Click element   ${logout_button}




