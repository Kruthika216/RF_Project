*** Settings ***
Documentation	Wrapper for Platform regression
Library    SSHLibrary
#Resource	${CURDIR}${/}../../Resources/common_keyword.resource
Variables	${CURDIR}${/}../../Resources/conf.py
Suite Setup	Open Connection And Login
Suite Teardown	Close Connection
Test Teardown	Set Log Level    ${LogLevel}
#Test Template	Run Test Case

*** variable ***
${HostName}    135.250.193.176
${User}    root
${Password}    Nokia@123

    
*** Test Cases ***
Execute AORREG-6986
		 [tags]		EA
		 log     Kruthika
		 Log To Console    Hello    
         Execute Command    cd /home/aorAuto/Automation/AOR/Platform/Regression/Python_Reg_suite/bin/;python AORREG-6986.py RATE4_ENV
         #write    cd /home/aorAuto/Automation/AOR/Platform/Regression/Python_Reg_suite/bin/;python AORREG-6986.py RATE4_ENV
         #log     first result is ${RESULT}
         ${RESULT}=    Read Until Regexp  *.PASSED:EA:Check for enable and disable of listener socket port
         log  result is  ${RESULT}
         Log To Console    ${RESULT}
         Should Contain    ${RESULT}    PASSED:EA:Check for enable and disable of listener socket port

*** Keywords ***    
Open Connection And Login
  [Documentation]    Connection established to remote machine ${HostName}
  log                Trying to connect ${HostName}
  Open Connection    ${HostName}
  Login              ${User}  ${Password}

    