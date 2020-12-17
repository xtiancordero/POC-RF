*** Settings ***
Library     SeleniumLibrary
Library     ${CURDIR}${/}..\\..\\Libraries\\Utilities.py
Library     ${CURDIR}${/}..\\..\\Libraries\\CountryCode.py
Resource    ${resource_folder_path}\\Variables.robot
Resource    ${resource_folder_path}\\Locators\\WebElements.robot

*** Keywords ***
Go to Client Onboarding Screen
    Click Element  ${ClientOnboarding}

Go to Individual Person creation page
    Mouse over      ${Person}
    Mouse over      ${Create}
    Click element   ${Individual_Person}

Input Main Details
     Click Element       ${Main_Details}
     ${Status_testData}          Get cell text   ${testdata}   CMBSG-6  Status          Main Details
     ${ChineseName_testData}     Get cell text   ${testdata}   CMBSG-6  Chinese Name    Main Details
     ${FirstName_testData}       Get cell text   ${testdata}   CMBSG-6  First Name      Main Details
     ${MiddleName_testData}      Get cell text   ${testdata}   CMBSG-6  Middle Name     Main Details
     ${LastName_testData}        Get cell text   ${testdata}   CMBSG-6  Last Name       Main Details
     ${MaidenName_testData}      Get cell text   ${testdata}   CMBSG-6  Maiden Name     Main Details
     ${Aliase_testData}          Get cell text   ${testdata}   CMBSG-6  Aliase          Main Details
     ${Salutation_testData}      Get cell text   ${testdata}   CMBSG-6  Salutation      Main Details
     ${AddressLine1_testData}    Get cell text   ${testdata}   CMBSG-6  Address Line 1  Main Details
     ${AddressLine2_testData}    Get cell text   ${testdata}   CMBSG-6  Address Line 2  Main Details
     ${AddressLine3_testData}    Get cell text   ${testdata}   CMBSG-6  Address Line 3  Main Details
     ${City_testData}            Get cell text   ${testdata}   CMBSG-6  City            Main Details
     ${PostalCode_testData}      Get cell text   ${testdata}   CMBSG-6  Postal Code     Main Details
     ${Country_testData}         Get cell text   ${testdata}   CMBSG-6  Country         Main Details
     Select from list by label  ${Status}        ${Status_testData}
     Input text                 ${ChineseName}   ${ChineseName_testData}
     Input text                 ${FirstName}     ${FirstName_testData}
     Input text                 ${MiddleName}    ${MiddleName_testData}
     Input text                 ${LastName}      ${LastName_testData}
     Input text                 ${MaidenName}    ${MaidenName_testData}
     Input text                 ${Aliase}        ${Aliase_testData}
     Select from list by label  ${Salutation}    ${Salutation_testData}
     Input text                 ${AddressLine1}  ${AddressLine1_testData}
     Input text                 ${AddressLine2}  ${AddressLine2_testData}
     Input text                 ${AddressLine3}  ${AddressLine3_testData}
     Input text                 ${City}          ${City_testData}
     Input text                 ${PostalCode}    ${PostalCode_testData}
     Input text                 ${Country}       ${Country_testData}

Input Other Details
     Click Element  ${Other_Details}
     ${Gender_testData}               Get cell text   ${testdata}   CMBSG-6  Gender                 Other Details
     ${DateOfBirth_testData}          Get cell text   ${testdata}   CMBSG-6  Date of Birth          Other Details
     ${CountryOfBirth_testData}       Get cell text   ${testdata}   CMBSG-6  Country of Birth       Other Details
     ${DataSecurityProfile_testData}  Get cell text   ${testdata}   CMBSG-6  Data Security Profile  Other Details
     Select from list by label   ${Gender}                   ${Gender_testData}
     Select Date                 ${DateOfBirth}              ${DateOfBirth_testData}
     Input text                  ${CountryOfBirth}           ${CountryOfBirth_testData}
     Input text                  ${DataSecurityProfile}      ${DataSecurityProfile_testData}

Input Employment Details and Comments
    Click Element  ${Employment_Details}

Input FATCA
    Click Element  ${FATCA_Details}

Click Save
    Click Element  ${Save_Button}

Individual Person Created
    Element should be visible   ${CreationSucceedMsg}
    Get CIF

Get CIF
    ${newCIF}=  Get text  ${CIF}
    Set test variable   ${newCIF}

Select Date
    [Arguments]     ${fromCalendar}  ${date}
    Click element   ${fromCalendar}
    ${year}         Get date year   ${date}
    ${month}        Get date month  ${date}
    ${day}          Get date day    ${date}
    ${DateMonth}    Catenate        ${XpathMonth}   '${month}')]
    ${DateDay}      Catenate        ${XpathDay}     '${day}']
    Click element   ${MonthDropdown}
    Click element   ${DateMonth}
    Click element   ${CloseCalendar}
    Click element   ${fromCalendar}
    Press keys      ${DateYear}  ${year}
    Click element   ${SelDate}
    Click element   ${DateDay}

Go to Individual Person search page
    Click element     ${Person}

Search using CIF
    #Set test variable  ${newCIF}   360734
    Input text        ${CIFCode}      ${newCIF}
    Click element     ${SearchButton}
    ${ResultCIF}      Catenate        ${ResultCIF}   '${newCIF}')]
    ${newResultCIF}   Get text        ${ResultCIF}
    Run keyword if    ${newCIF}==${newResultCIF}  Click element  ${ViewDetails}

Go to Nationality tab
    Click element  ${Nationality}

Add Nationality
    ${NationalityCountry_testData}    Get cell text      ${testdata}    CMBSG-6    Nationality Country    Nationality
    ${DocumentType_testData}          Get cell text      ${testdata}    CMBSG-6    Document Type          Nationality
    ${DocumentCode_testData}          Get cell text      ${testdata}    CMBSG-6    Document Code          Nationality
    ${IssueDate_testData}             Get cell text      ${testdata}    CMBSG-6    Issue Date             Nationality
    ${ExpiryDate_testData}            Get cell text      ${testdata}    CMBSG-6    Expiry Date            Nationality
    ${IssuedBy_testData}              Get cell text      ${testdata}    CMBSG-6    Issued By              Nationality
    ${Comments_testData}              Get cell text      ${testdata}    CMBSG-6    Comments               Nationality
    ${PrimaryCheckBox_testData}       Get cell text      ${testdata}    CMBSG-6    Primary                Nationality
    Set test variable           ${DocumentType_testData}
    Set test variable           ${DocumentCode_testData}
    Set test variable           ${IssueDate_testData}
    Set test variable           ${ExpiryDate_testData}
    Set test variable           ${IssuedBy_testData}
    Go to Nationality tab
    Click element  ${NewNationality}
    Select frame                ${NationalityiFrame}
    Input text                  ${NationalityCountry}   ${NationalityCountry_testData}
    Select from list by label   ${DocumentType}         ${DocumentType_testData}
    Input text                  ${DocumentCode}         ${DocumentCode_testData}
    Select Date                 ${IssueDate}            ${IssueDate_testData}
    Select Date                 ${ExpiryDate2}          ${ExpiryDate_testData}
    Input text                  ${IssuedBy}             ${IssuedBy_testData}
    Input text                  ${Comments}             ${Comments_testData}
    Run keyword if              '${PrimaryCheckBox_testData}'=='${SetAsPrimary}'     Click element  ${PrimaryCheckBox}
    Click element               ${SaveNationality}

Validate Passport was added
    ${CountryName}           Get country name  ${IssuedBy_testData}
    ${DocumentType_xpath}    Catenate     ${xpathText}      '${DocumentType_testData}')]
    ${IssuedBy_xpath}        Catenate     ${xpathText}      '${CountryName}')]
    ${DocumentCode_xpath}    Catenate     ${xpathText}      '${DocumentCode_testData}')]
    ${IssueDate_newFormat}   Format date  ${IssueDate_testData}
    ${IssuedDate_xpath}      Catenate     ${xpathText}      '${IssueDate_newFormat}')]
    ${ExpiryDate_newFormat}  Format date  ${ExpiryDate_testData}
    ${ExpiryDate_xpath}      Catenate     ${xpathText}      '${ExpiryDate_newFormat}')]
    Go to Nationality tab
    ${IssuedByText}=      Get text   ${IssuedBy_xpath}
    ${IssuedDateText}=    Get text   ${IssuedDate_xpath}
    ${ExpiryDateText}=    Get text   ${ExpiryDate_xpath}
    ${DocumentCodeText}=  Get text   ${DocumentCode_xpath}
    Element should be visible   ${DocumentType_xpath}
    Run keyword if   '${IssuedByText}'=='${CountryName}'  Set test message  Passed!
    Run keyword if   '${IssuedDateText}'=='${IssueDate_testData}'  Set test message  Passed!
    Run keyword if   '${ExpiryDateText}'=='${ExpiryDate_testData}'  Set test message  Passed!
    Run keyword if   '${DocumentCodeText}'=='${DocumentCode_testData}'  Set test message  Passed!



