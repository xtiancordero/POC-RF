*** Settings ***
Library     SeleniumLibrary
Library     ${Utilities}
Resource    ${Variables}
Resource    ${OVWebElements}

*** Keywords ***
Margin OK displayed
    Page should contain element  ${MarginOK}
    ${MarginOKCount}    Get text  ${MarginOKCount}
    ${MarginOKDenom}    Get text  ${MarginOKDenom}
    ${MarginOK%}        Get text  ${MarginOK%}
    Set variable        ${MarginOKCount}   ${MarginOKDenom}  ${MarginOK%}
    ${MarginOKPerc}=    Evaluate  (${MarginOKCount}/${MarginOKDenom})*100
    ${MarginOKPerc}=    Evaluate   "%.2f" % ${MarginOKPerc}
    ${MarginOKPerc}=    Catenate    SEPARATOR=  ${MarginOKPerc}  %
    Run keyword if      '${MarginOKPerc}'=='${MarginOK%}'   Put text  Margin OK - ${MarginOKCount} Facilities
    Set test variable   ${MarginOKCount}
    Set testvariable    ${MarginOKDenom}

Notify displayed
    Page should contain element  ${Notify}
    ${NotifyCount}    Get text  ${NotifyCount}
    ${NotifyDenom}    Get text  ${NotifyDenom}
    ${Notify%}        Get text  ${Notify%}
    Set variable      ${NotifyCount}   ${NotifyDenom}  ${Notify%}
    ${NotifyPerc}=    Evaluate  (${NotifyCount}/${NotifyDenom})*100
    ${NotifyPerc}=    Evaluate   "%.2f" % ${NotifyPerc}
    ${NotifyPerc}=    Catenate    SEPARATOR=  ${NotifyPerc}  %
    Run keyword if     '${NotifyPerc}'=='${Notify%}'   Put text  Notify - ${NotifyCount} Facilities
    Set test variable   ${NotifyCount}
    Set test variable          ${NotifyDenom}

Margin Call displayed
    Page should contain element  ${MarginCall}
    ${MarginCallCount}    Get text  ${MarginCallCount}
    ${MarginCallDenom}    Get text  ${MarginCallDenom}
    ${MarginCall%}        Get text  ${MarginCall%}
    Set variable          ${MarginCallCount}   ${MarginCallDenom}  ${MarginCall%}
    ${MarginCallPerc}=    Evaluate  (${MarginCallCount}/${MarginCallDenom})*100
    ${MarginCallPerc}=    Evaluate   "%.2f" % ${MarginCallPerc}
    ${MarginCallPerc}=    Catenate    SEPARATOR=  ${MarginCallPerc}  %
    Run keyword if        '${MarginCallPerc}'=='${MarginCall%}'   Put text  Margin Call - ${MarginCallCount} Facilities
    Set test variable     ${MarginCallCount}
    Set test variable          ${MarginCallDenom}

Close Out displayed
    Page should contain element  ${CloseOut}
    ${CloseOutCount}    Get text  ${CloseOutCount}
    ${CloseOutDenom}    Get text  ${CloseOutDenom}
    ${CloseOut%}        Get text  ${CloseOut%}
    Set variable        ${CloseOutCount}   ${CloseOutDenom}  ${CloseOut%}
    ${CloseOutPerc}=    Evaluate  (${CloseOutCount}/${CloseOutDenom})*100
    ${CloseOutPerc}=    Evaluate   "%.2f" % ${CloseOutPerc}
    ${CloseOutPerc}=    Catenate    SEPARATOR=  ${CloseOutPerc}  %
    Run keyword if      '${CloseOutPerc}'=='${CloseOut%}'   Put text  Close Out - ${CloseOutCount} Facilities
    Set test variable   ${CloseOutCount}
    Set test variable   ${CloseOutDenom}

Total Facilities matched
    ${TotalFac}=     Evaluate  ${MarginOKCount}+${NotifyCount}+${MarginCallCount}+${CloseOutCount}
    Run keyword if   '${TotalFac}'=='${MarginOKDenom}' and '${TotalFac}'=='${NotifyDenom}' and '${TotalFac}'=='${MarginCallDenom}' and '${TotalFac}'=='${CloseOutDenom}'
    ...  Take screenshot  ${TotalFac} Total Facilities