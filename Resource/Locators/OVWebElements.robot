*** Variables ***
#Signin Page
${Username}     xpath://span[contains(text(), 'Username')]
${Password}     xpath://span[contains(text(), 'Password')]
${UsernameInputBox}     name:j_username
${PasswordInputBox}     name:j_password
${LoginButton}          id:proceed
${logoutButton}         xpath://a[@href='/OACredit/j_spring_security_logout']
${logoutIndicator}      xpath://*[contains(text(), 'Powered by OneAston')]
${loadingIndicator}     xpath://*[@id="loading"]/div/img
${loadingText}           xpath://td[text()='Loading...']
#Security
${Security}             //span[text()='Security ']
${UserMaintenance}      //span[text()='User Maintenance']
${NextPage}             xpath:(//a[text()='Next'])[2]
${FirstPage}            //a[text()='First']
${UserTypeOrder}        (//th[text()='User Type'])[2]


${AdminUser}            xpath://div[2]/div/table/tbody/tr/td[2]/button/span[text()='ADMIN_USER']
${CreditAdmin}          xpath://div[2]/div/table/tbody/tr/td[2]/button/span[text()='CREDIT_ADMIN']
${CreditAdvisory}       xpath://div[2]/div/table/tbody/tr/td[2]/button/span[text()='CREDIT_ADVISORY']
${CreditMonitoring}     xpath://div[2]/div/table/tbody/tr/td[2]/button/span[text()='CREDIT_MONITORING']
${CSA}                  xpath://div[2]/div/table/tbody/tr/td[2]/button/span[text()='CSA']
${ReadOnlyUser}         xpath://div[2]/div/table/tbody/tr/td[2]/button/span[text()='READ_ONLY_USER']
${SearchBar}            xpath://input[@id='input-10']
${Xpath}                xpath://*[text()=
${Xpath_contains}       (//*[contains(text(),'
${Xpath_span}           xpath://span[contains(text(),'
${Xpath_js}             //span[contains(text(),'
${EnableButton}         xpath://button[@id='status_13249']/span[text()='Enable']
${YesButton}            xpath://body[@id="main-body"]/div[4]/div[7]/button[2]
${DisableButton}        xpath://button[@id='status_13249']/span[text()='Disable']
#Enable and disable button for Admin_User_PCT only
${UserLockedOut}        xpath://h3[contains(text(), 'User')]


#Dashboard
${MarginOK}             xpath://div/h3[text()='OK']
${MarginOKCount}        xpath://h2/span[@class='green-color' and @id='numerator']
${MarginOKDenom}        xpath://h2/span[@class='green-color' and @id='numerator']/following-sibling::small
${MarginOK%}            xpath:(//span[@id='percentage'])[1]

${Notify}               xpath://div/h3[text()='Notify']
${NotifyCount}          xpath://h2/span[@class='orange-color' and @id='numerator']
${NotifyDenom}          xpath://h2/span[@class='orange-color' and @id='numerator']/following-sibling::small
${Notify%}              xpath:(//span[@id='percentage'])[2]

${MarginCall}           xpath://div/h3[text()='Margin Call']
${MarginCallCount}      xpath://h2/span[@class='margincall-text-color' and @id='numerator']
${MarginCallDenom}      xpath://h2/span[@class='margincall-text-color' and @id='numerator']/following-sibling::small
${MarginCall%}          xpath:(//span[@id='percentage'])[3]

${CloseOut}             xpath://div/h3[text()='Close Out']
${CloseOutCount}        xpath://h2/span[@class='gray-color' and @id='numerator']
${CloseOutDenom}        xpath://h2/span[@class='gray-color' and @id='numerator']/following-sibling::small
${CloseOut%}            xpath:(//span[@id='percentage'])[4]
${AreaChart}            xpath://canvas[@id='areaChart']
${AreaChart%}           xpath://span[@class='Dashboard1Xlabel']


#Monitoring > Credit Activity
${Monitoring}             //span[text()='Monitoring ']
${CreditActivity}         //span[text()='Credit Activity']
${Liabilities}            //td[text()='Total: ']

#Liabilities




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

