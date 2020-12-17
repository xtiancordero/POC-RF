*** Variables ***
#Signin Page
${UsernameInputBox}     xpath://input[@name='j_username']
${PasswordInputBox}     xpath://input[@name='j_password']
${Checkbox}             xpath://input[@id='admit']
${SignInButton}         xpath://button[@id='but_login']
${TerminateMsg}         xpath://*[contains(text(), 'terminate')]
${confirmButton}        xpath://*[text() = 'Confirm']

#Portfolio Analysis
${PortfolioAnalysis}        xpath://span[text()='Portfolio Analysis']
${PortfolioAnalysisjs}      //span[text()='Portfolio Analysis']
#Home
${Home}                     xpath://span[@id='M2_1']

#Analysis
${Analysis}                 xpath://span[@id='M2_2']id:M2_2

#Order Management
${OrderManagement}          xpath://span[@id='M2_3']
${CreateSingleOrder}        xpath://span[@id='M2_3_1']
${Bonds}                    xpath://span[@id='M2_3_1_6']
${CashTransfer}             xpath://span[@id='M2_3_1_7']
${CashWithdrawalRemittance}  xpath://span[@id='M2_3_1_8']
${DepositPlacement}         xpath://span[@id='M2_3_1_9']
${Equities}                 xpath://span[@id='M2_3_1_12']
${Funds}                    xpath://span[@id='M2_3_1_13']
${FXSpot}                   xpath://span[@id='M2_3_1_15']
${FXForward}                xpath://span[@id='M2_3_1_17']
${FXSwaps}                  xpath://span[@id='M2_3_1_19']
${LoanDrawdown}             xpath://span[@id='M2_3_1_20']
${MaxiYield}                xpath://span[@id='M2_3_1_22']
${PreciousMetals}           xpath://span[@id='M2_3_1_24']
${StructuredNotes}          xpath://span[@id='M2_3_1_26']
${Options}                  xpath://span[@id='M2_3_1_28']
${ListedEquity}             xpath://span[@id='M2_3_1_28_1']
${OTCEquity}                xpath://span[@id='M2_3_1_28_3']
${FXOptions}                xpath://span[@id='M2_3_1_28_5']
${InterestRateDerivates}    xpath://span[@id='M2_3_1_29']
${InterestRateDerivatives}  xpath://span[@id='M2_3_1_29_1']
${CrossCurrencySwaps}       xpath://span[@id='M2_3_1_29_3']
${Derivatives}              xpath://span[@id='M2_3_1_30']
${BuyFXDerivatives}         xpath://span[@id='M2_3_1_30_1']
${BuyEquityDerivatives}     xpath://span[@id='M2_3_1_30_3']
${StandardDerivativesSell}  xpath://span[@id='M2_3_1_31']


#Order Book
${OrderBook}                xpath://span[@id='M2_3_2']
${AllOrders}                xpath://span[@id='M2_3_2_1']
${ChangeRenewalInst}        xpath://span[@id='M2_3_2_2']
${ExecutionOrders}          xpath://span[@id='M2_3_2_3']
${PendingAction}            xpath://span[@id='M2_3_2_4']
${SavedSession}             xpath://span[@id='M2_3_2_10']


#Create FX Options Order
#Identification
${Buy}                      xpath://input[@id='form.natureE.btn_radio1']
${Sell}                     xpath://input[@id='form.natureE.btn_radio2']
${OpenClose}                id:form.subtype.code
${Portfolio}                id:text.formSearch.portfolio.code
${PortfolioNumber}          xpath://span[text()='Portfolio Number :']
${SubType}                  id:form.udSubtype.code
${Facility}                 xpath://b[@data-name='udFacility.code']
#Trade Details
${PostExecutedTrade}        xpath://input[@id='form.udExecutedF']
${TradeDate}                xpath://td/b[@class='nowrap']
${ExpiryDate}               xpath://input[@id='form.expirationD']
${SettlementDate}           xpath://input[@id='form.udDeliveryD']
${Option}                   xpath://select[@name='optionClassE']
${Class}                    xpath://select[@name='optStyleE']
${StrikePrice}              xpath://input[@name='udStrikePriceN']
${CallAmount}               xpath://input[@id='form.quantityN']
${CallCurrency}             id:form.opCurrency._oid
${PutAmount}                xpath://input[@id='form.udAltCurrencyAmtN']
${PutCurrency}              id:form.udAltCurrency._oid
${OrderInitiation}          xpath://select[@id='form.clientInitE']
${ClientOrderDate/Time}     xpath://td/i[@onclick="datepicker('form.udClientOrderD');"]
${OrderPlacedVia}           id:form.communicationType._oid
${Phone/Ext}                id:form.udCdmsAddLine1C
${OrderPerson}              //i[@title='Search Spoken To Person']
${OrderPersonCIF}           xpath://label[text()='0000000000100000737']
#Premium Details
${PremiumSettlementDate}    xpath://input[@id='form.valueD']
${PremiumCurrency}          xpath://select[@id='form.accCurrency._oid']
${CounterPartyPremium}      xpath://input[@name='udTotalPremiumN']
${ClientPremium}            xpath://input[@name='udClientPremiumN']
${Spread}                   xpath://input[@name='udSpreadN']
${LinkedReference}          xpath://input[@name='udLinkedRefOperC']
${Check}                    xpath://button[@id='btn_r2___']
${Cancel}                   id:btn_vg0__


#Errors
${ErrorTable}              xpath://ul[@class='messenger']
${Errors}                  xpath:(//li[@class='error'])

#Check FX Option Order
#Compliance Cases per Portfolio

${ComplianceCases}          xpath://table[@id='gdv0i'].
${CaseCheckbox}             xpath:(//table[@id='gdv0i']//input[@type='checkbox'])
${ClarifyCases}             id:btn_X_x_1
${Reason}                   xpath://textarea[@id='form.reasonC']
${SaveCase}                 id:btn_U__14
${CancelCase}               id:btn_b1t__
#Sanity Checks per Order
${Submit}                   //button[@id='btn_save_2']
${Modify}                   id:btn_n0z11
${CancelOrder}              id:btn_H_62W
${Alert}                    Alert Text: Are you sure to submit this order?

#View FX Option Order
${ViewTranscationCode}      xpath:(//b[@data-type='textfield'])[4]
${ViewInstrument}           xpath:(//b[@data-type='textfield'])[5]
${ViewTradeDate}            xpath:(//b[@data-type='caldatefield'])[1]
${ViewExpiryDate}           xpath:(//b[@data-type='caldatefield'])[2]
${ViewStrikePrice}          xpath:(//b[@data-type='textfield'])[9]
${ViewOption}               xpath://b[@data-name='optionClassE']
${ViewCallCurrency}         xpath:(//b[@data-type='textfield'])[11]
${ViewPutCurrency}          xpath:(//b[@data-type='textfield'])[13]
${ViewPremCurrency}         xpath:(//b[@data-type='textfield'])[13]

#Calendar
${MonthDropdown}        xpath://div[@id='calmonthname']
${DateYear}             xpath://div[@class='navigate']/input[@id='cal_year']
${CloseCalendar}        xpath://div[@id='cal']
${XpathMonth}           xpath://ul[@id='monthList']/li[contains(text(),
${XpathDay}             xpath://*[text() =
${DateDay}              xpath://input[@id='cal_day']
${SelDate}              xpath://div[@class='seldate']



#Client Onboarding page
${ClientOnboarding}     xpath://*[contains(text(), 'Client Onboarding')]
${logoutButton}         xpath://b[text()='Logout']
${Person}               xpath://span[contains(text(), 'Person')]
${Create}               id:M2_2_2
${IndividualPerson}     id:M2_2_2_1
${Search}               id:M2_2_1

#Individual Person creation page
${MainDetails}          id:PersonDetailsEnabled_MY2n_
${OtherDetails}         id:tab_V___3
${EmploymentDetails}    id:tab_lG__E
${FATCADetails}         id:tab_XXZ_7
${SaveButton}           id:btn_U3922

#Main Details (Create Individual Person)
${Status}               id:form.statusE
${ChineseName}          id:form.chineseNameC
${FirstName}            id:form.firstNameC
${MiddleName}           id:form.middleNameC
${LastName}             id:form.surnameC
${MaidenName}           id:form.maidenNameC
${Aliase}               id:form.aliaseC
${Salutation}           id:form.salutationE
${PreferredName}        id:form.preferredNameC
${AddressLine1}         id:form.address1C
${AddressLine2}         id:form.address2C
${AddressLine3}         id:form.address3C
${City}                 id:form.addrCityC
${PostalCode}           id:form.addrPostCodeC
${Country}              id:text.form.addrCountry.code
${CreationSucceedMsg}   xpath://label[contains(text(), 'Creation succeeded.')]
${CIF}                  xpath://*[@id="PersonDetailsView_W8_An"]/table/tbody/tr[1]/td[2]/b


#Other Details (Create Individual Person)
${Minor}                id:form.minorF
${Gender}               id:form.genderE
${MaritalStatus}        id:form.maritalStatusE
${NumberOfDependents}   id:form.dependentsTi
${Race}                 id:form.raceC
${PreferredLanguage}    id:prefLanguage._oid
${CallBackNumber}       id:form.callBackNoC
${DateOfBirth}          xpath://input[@id='form.birthDateD']/following-sibling::i[@title='Select Date']
${MonthDropdown}        xpath://div[@id='calmonthname']
${DateYear}             xpath://div[@class='navigate']/input[@id='cal_year']
${CloseCalendar}        xpath://div[@id='cal']
${XpathMonth}           xpath://ul[@id='monthList']/li[contains(text(),
${XpathDay}             xpath://*[text() =
${DateDay}              xpath://input[@id='cal_day']
${SelDate}              xpath://div[@class='seldate']

${PlaceOfBirth}         id:form.birthPlaceC
${CountryOfBirth}       id:text.form.birthIncorpGeo.code
${DateDeceased}         id:form.dateDeceasedD
${PlaceOfDeath}         id:form.placeOfDeathC
${DataSecurityProfile}  id:text.formSearch.dataSecuProf.code
${ClosedInHost}         id:form.closedInHostF
${Litigation}           id:form.litigationF
${PEP}                  id:form.pepF
${AMLHighRisk}          id:form.highRiskF
${RemarksForHighRisk}   id:form.remarksHighRiskC
${Staff}                id:form.staffF
${AccreditedInvestor}   id:form.piF
${TaxCountryOfResidence}    id:text.form.taxCtryResidence.code
${AILastReviewDate}     id:form.piLastRevD
${AINextReviewDate}     id:form.piNextRevD
${VC}                   id:form.vcF
${VCCompanion}          id:form.vcCompanionF
${RelatedParty}         id:form.relatedPartyF
${RemarksForRelatedParty}   id:form.remarksForRelatedPtyC
#Employment Details and Comments (Create Individual Person)
${EmployerName}         id:form.employerNameC
${Occupation}           id:form.occupationC
${Industry}             id:form.businessNatureC
${JobTitle}             id:form.jobTitleC
${PersonComments}       id:form.commentC
${EmployerAddress1}     id:form.empAddr1C
${EmployerAddress2}     id:form.empAddr2C
${EmployerAddress3}     id:form.empAddr3C
${City}                 id:form.empCityC
${State}                id:form.empStateC
${PostalCode}           id:form.empPostCodeC
${EmployerCountry}      id:text.form.empCountry.code
#FATCA (Create Individual Person)
${BirthPlace}           id:form.birthPlaceE
${IDType}               id:form.personFatcaidTypeE
${USTINNo}              id:form.personTinCode
${Cert}                 id:form.personFatcaCertE
${SigningDate}          id:form.personFatcaCertE
${ExpiryDate1}          id:form.personFatcaExpiDateD
${Waiver}               id:form.personFatcaWaiverE
${Status}               id:form.personFatcaStatusE
${AcctType}             id:form.personRecalcitrantTypeE
${UserID}               id:form.user
${UserDate}             id:form.userDateD

#Search Person Page
${CIFCode}              id:form.cifCode
${SearchButton}         id:btn_aMZ__
${ResultCIF}            xpath://*[contains(text(),
${ViewDetails}          xpath://*[@class='icon sprite application_form_magnify']
${Nationality}          xpath://*[contains(text(), 'Nationality')]
${NewNationality}       id:btn_l__11
#Nationality pop-up window
${NationalityiFrame}    id:xguiframe
${NationalityCountry}   id:text.form.geographic.code
${DocumentType}         id:form.idTypeE
${DocumentCode}         id:form.nricPpC
${IssueDate}            xpath://*[@id="PersonNationalityCreate_L_61q"]/div[2]/div/table[1]/tbody/tr[5]/td[2]/div/i
${ExpiryDate2}          xpath://*[@id="PersonNationalityCreate_L_61q"]/div[2]/div/table[1]/tbody/tr[6]/td[2]/div/i
${IssuedBy}             id:text.form.issuedBy.code
${Comments}             id:form.commentsC
${PrimaryCheckBox}      id:form.primaryF

${SaveNationality}      id:btn_Mm_Jg
${CancelNationality}    id:btn_W0___

#Nationality tab of View Individual Person
${xpathText}                  xpath://td[contains(text(),
${natIssuedByelem}            xpath://*[contains(text(),
${natIssuedDateelem}          xpath:://td[contains(text(),
${natExpiryDateelem}          xpath://*[@id="k__5_"]/tbody/tr/td[5]
${natDocumentCodeelem}        xpath://*[@id="k__5_"]/tbody/tr/td[6]
#${}
#${}
#${}
#
#${}
#${}
#${}
#${}
#
#${}
#${}
#${}
#${}
#${}
#${}
#${}
#${}
#${}
#${}
#${}
#${}
#${}
#${}
#${}
#${}
#

