*** Settings ***
Library     SeleniumLibrary
Library     ${CURDIR}${/}..\\..\\..\\Libraries\\Utilities.py
Library     ${CURDIR}${/}..\\..\\..\\Libraries\\ReportMaker.py
Resource    ${Variables}
Resource    ${WUIWebElements}
Resource    ${CURDIR}${/}..\\..\\Actions\\OneView\\Login.robot

*** Keywords ***
Create FX Options Order
    Focus element into view by jS  ${PortfolioAnalysisjs}
    Click element  ${PortfolioAnalysis}
    Mouse over     ${OrderManagement}
    Mouse over     ${CreateSingleOrder}
    Mouse over     ${Options}
    Click element     ${FXOptions}

Get test data
        [Arguments]             ${Sheet}
        ${Nature_testData1}     Get cell text   ${testdata}   ${Sheet}  Nature  Test Data 1
        ${Nature_testData2}     Get cell text   ${testdata}   ${Sheet}  Nature  Test Data 2
        ${Portfolio_testData}   Get cell text   ${testdata}   ${Sheet}  Portfolio  Test Data 1
        ${SubType_testData}     Get cell text   ${testdata}   ${Sheet}  Sub Type  Test Data 1
        ${PET_testData}         Get cell text   ${testdata}   ${Sheet}   PET  Test Data 1
        ${ExpiryDate_testData}  Get cell text   ${testdata}  ${Sheet}  Expiry Date  Test Data 1
        ${SettlementDate_testData}  Get cell text   ${testdata}   ${Sheet}  Settlement Date  Test Data 1
        ${Option_testData}          Get cell text   ${testdata}   ${Sheet}  Option Class  Test Data 1
        ${Class_testData}           Get cell text   ${testdata}   ${Sheet}  Option Class  Test Data 2
        ${StrikePrice_testData}     Get cell text   ${testdata}   ${Sheet}  Strike Price  Test Data 1
        ${CallAmount_testData}      Get cell text   ${testdata}   ${Sheet}  Call Amount/Currency  Test Data 1
        ${CallCurrency_testData}    Get cell text   ${testdata}   ${Sheet}  Call Amount/Currency  Test Data 2
        ${PutAmount_testData}       Get cell text   ${testdata}   ${Sheet}  Put Amount/Currency  Test Data 1
        ${PutCurrency_testData}     Get cell text   ${testdata}   ${Sheet}  Put Amount/Currency  Test Data 2
        ${PremiumSettlementDate_testData}  Get cell text   ${testdata}   ${Sheet}  Premium Settlement Date  Test Data 1
        ${PremiumCurrency_testData}        Get cell text   ${testdata}   ${Sheet}  Premium Currency  Test Data 1
        ${CounterpartyPremium_testData}    Get cell text   ${testdata}   ${Sheet}  Counterparty Premium  Test Data 1
        ${ClientPremium_testData}         Get cell text   ${testdata}   ${Sheet}  Client Premium  Test Data 1
        ${Spread_testData}             Get cell text   ${testdata}   ${Sheet}  Spread  Test Data 1
        ${LinkedReference_testData}    Get cell text   ${testdata}   ${Sheet}  Linked Reference  Test Data 1
        ${OrderInitiation_testData}    Get cell text   ${testdata}   ${Sheet}   Order Initiation  Test Data 1
        ${ClientOrderDate/Time_testData}   Get cell text   ${testdata}   ${Sheet}  Client Order Date/Time  Test Data 1
        ${OrderPlacedVia_testData}         Get cell text   ${testdata}   ${Sheet}  Order Placed Via  Test Data 1
        ${Phone/Ext_testData}          Get cell text   ${testdata}   ${Sheet}  Phone/Ext  Test Data 1
        ${OrderPerson_testData}        Get cell text   ${testdata}   ${Sheet}  Order Person  Test Data 1
        ${ReasonforOverride_testData}  Get cell text   ${testdata}   ${Sheet}  Reason for Override  Test Data 1
        ${SCAComments_testData}        Get cell text   ${testdata}   ${Sheet}  SCA Comments  Test Data 1
        Set test variable  ${Portfolio_testData}
        Set test variable  ${Nature_testData1}
        Set test variable  ${Nature_testData2}
        Set test variable  ${Portfolio_testData}
        Set test variable  ${SubType_testData}
        Set test variable  ${PET_testData}
        Set test variable  ${ExpiryDate_testData}
        Set test variable  ${SettlementDate_testData}
        Set test variable  ${Option_testData}
        Set test variable  ${Class_testData}
        Set test variable  ${StrikePrice_testData}
        Set test variable  ${CallAmount_testData}
        Set test variable  ${CallCurrency_testData}
        Set test variable  ${PutAmount_testData}
        Set test variable  ${PutCurrency_testData}
        Set test variable  ${PremiumSettlementDate_testData}
        Set test variable  ${PremiumCurrency_testData}
        Set test variable  ${CounterpartyPremium_testData}
        Set test variable  ${ClientPremium_testData}
        Set test variable  ${Spread_testData}
        Set test variable  ${LinkedReference_testData}
        Set test variable  ${OrderInitiation_testData}
        Set test variable  ${ClientOrderDate/Time_testData}
        Set test variable  ${OrderPlacedVia_testData}
        Set test variable  ${Phone/Ext_testData}
        Set test variable  ${OrderPerson_testData}
        Set test variable  ${ReasonforOverride_testData}
        Set test variable  ${SCAComments_testData}

Create FXO Order
        Run keyword if  '${Nature_testData1}'=='Buy'    Click element   ${Buy}
        ...  ELSE       Click element   ${Sell}
        Select from list by label   ${OpenClose}  ${Nature_testData2}
        Input text      ${Portfolio}    ${Portfolio_testData}
        Click element   ${PortfolioNumber}
        Select from list by label   ${SubType}  ${SubType_testData}
        Run keyword unless          '${PET_testData}'==''  Click element  ${PostExecutedTrade}
        Input text      ${ExpiryDate}  ${ExpiryDate_testData}
        Run keyword unless  '${SettlementDate_testData}'==''  Input text  ${SettlementDate}  ${SettlementDate_testData}
        Select from list by label   ${Option}  ${Option_testData}
        Select from list by label   ${Class}   ${Class_testData}
        Input text  ${StrikePrice}      ${StrikePrice_testData}
        Select from list by label   ${CallCurrency}  ${CallCurrency_testData}
        Select from list by label   ${PutCurrency}   ${PutCurrency_testData}
        Run keyword if  '${SubType_testData}'=='Double Knock in FXO'   Input text  ${CallAmount}  ${CallAmount_testData}
        Run keyword if  '${SubType_testData}'=='Double Knock out FXO'  Input text  ${PutAmount}   ${PutAmount_testData}
        Input text      ${PremiumSettlementDate}  ${PremiumSettlementDate_testData}
        Select from list by label   ${PremiumCurrency}  ${PremiumCurrency_testData}
        Run keyword unless  '${CounterpartyPremium_testData}'==''  Input text  ${CounterPartyPremium}  ${CounterpartyPremium_testData}
        Run keyword unless  '${ClientPremium_testData}'==''  Input text  ${ClientPremium}  ${ClientPremium_testData}
        Run keyword unless  '${Spread_testData}'==''  Input text  ${Spread}  ${Spread_testData}
        Run keyword unless  '${LinkedReference_testData}'==''  Input text  ${LinkedReference}  ${LinkedReference_testData}
        Select from list by label  ${OrderInitiation}   ${OrderInitiation_testData}
        Run keyword unless   '${ClientOrderDate/Time_testData}'==''  Input text   ${ClientOrderDate/Time}  ${ClientOrderDate/Time_testData}
        Select from list by label  ${OrderPlacedVia}  ${OrderPlacedVia_testData}
        Input text      ${Phone/Ext}  ${Phone/Ext_testData}
        Click element by jS      ${OrderPerson}
        Click element    ${OrderPersonCIF}
        Click element    ${Check}
        Take Screenshot with text  Order Checked
        ${NoErrorPresent}     Run keyword and return status  Element should not be visible  ${ErrorTable}
        Run keyword if        '${NoErrorPresent}'=='False'    Check for errors
        ${NoComplianceCases}  Run keyword and return status  Element should not be visible  ${ComplianceCases}
        Run keyword if        '${NoComplianceCases}'=='False'  Clarify Compliance Cases

Check for errors
        ${ErrorCount}    Get element count     ${Errors}
        Set test variable  ${ErrorCount}
        Run keyword if    ${ErrorCount}>1  Fail test with multiple error message
        Run keyword if    ${ErrorCount}==1  Fail test with single error message

Fail test with multiple error message
        FOR  ${Counter}  IN RANGE  ${ErrorCount}
             ${Counter}  Evaluate  ${Counter}+1
             ${ErrorElement}  Catenate      ${Errors} [${Counter}]
             ${ErrorMessage}  Get text      ${ErrorElement}
             Put text   ${ErrorMessage}
        END
        Take Screenshot  Error
        Fail       Multiple error messages displayed

Fail test with single error message
        ${ErrorElement}  Catenate  ${Errors} [1]
        ${ErrorMessage}  Get text  ${ErrorElement}
        Put text   ${ErrorMessage}
        Take Screenshot  Error
        Fail       ${ErrorMessage}

Clarify Compliance Cases
        ${CaseCount}     Get element count  ${CaseCheckbox}
        FOR  ${Counter}  IN RANGE  ${CaseCount}
             ${Counter}  Evaluate  ${Counter}+1
             Exit for loop if      ${Counter}>${CaseCount}
             ${Casebox}     Catenate  ${CaseCheckbox} [${Counter}]
             Click element  ${Casebox}
        END
        Take Screenshot with text    Compliance Cases – ${CaseCount}
        Click element   ${ClarifyCases}
        Input text      ${Reason}   Reason to address ${CaseCount} compliance cases
        Click element   ${SaveCase}
        Take Screenshot with text   Compliance Cases Resolved

Submit order
        Click element by jS      ${Submit}
        Handle alert    ACCEPT

View FX Option order
        ${Instrument_WUI}        Get text  ${ViewInstrument}
        ${ViewTradeDate_WUI}     Get text  ${ViewTradeDate}
        ${ViewExpiryDate_WUI}    Get text  ${ViewExpiryDate}
        ${ViewOption_WUI}        Get text  ${ViewOption}
        ${ViewStrikePrice_WUI}   Get text  ${ViewStrikePrice}
        ${ViewCallCurrency_WUI}  Get text  ${ViewCallCurrency}
        ${ViewPutCurrency_WUI}   Get text  ${ViewPutCurrency}
        ${ViewTranscationCode_WUI}  Get text  ${ViewTranscationCode}
        Take Screenshot with text   Order Transaction Code ${ViewTranscationCode_WUI}
        Set suite variable  ${Instrument_WUI}
        Set suite variable  ${ViewTradeDate_WUI}
        Set suite variable  ${ViewExpiryDate_WUI}
        Set suite variable  ${ViewOption_WUI}
        Set suite variable  ${ViewStrikePrice_WUI}
        Set suite variable  ${ViewCallCurrency_WUI}
        Set suite variable  ${ViewPutCurrency_WUI}



