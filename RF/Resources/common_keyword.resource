*** Settings ***
Documentation    Wrapper for Platform regression 
Library          SSHLibrary
Variables        conf.py



*** Keywords ***
Open Connection And Login
  [Documentation]    Connection established to remote machine ${HostName}
  log                Trying to connect ${HostName}
  Open Connection    ${HostName}
  Login              ${User}  ${Password}
  
Run Test Case
    [Documentation]   Running platform regression individual test case    

    [Arguments]       ${TC_ID}  ${RESULT_SHOULD_BE}    ${IS_MULTI_TC}    
   ${TC_NAME}=       Run Keyword If    '${IS_MULTI_TC}'=='None'       
   ...    Concatinate     ${TC_ID}     .py 
   ...    ELSE
   ...    Concatinate    ${IS_MULTI_TC}    .py
    
    ${EnvName}=       catenate  SEPARATOR=   ${Environment}    _ENV
    log               Executing cd ${AutomationPath};python ${TC_NAME}
    
    #executing command and return results
    ${RESULT}=        Run Keyword If   '${IS_MULTI_TC}'=='None'
    ...    Executing Command    cd ${AutomationPath};python ${TC_NAME} ${EnvName}
    ...    ELSE
    ...    Executing Command    cd ${AutomationPath};python ${TC_NAME} ${EnvName} ${TC_ID} ${TC_ID}
                                                  
    log               Result of ${TC_ID} is \r\n ${RESULT} 
    Should Contain    ${RESULT}  ${RESULT_SHOULD_BE}
     
Concatinate
    [Documentation]   Concatination strings using built in keyword and return results
    [Arguments]       ${STR1}    ${STR2}    
    ${CATSTR}=        catenate    SEPARATOR=   ${STR1}    ${STR2}  
    [return]          ${CATSTR} 
    
Executing Command
    [Documentation]    Executing commands in server
    [Arguments]        ${CMD}  
    ${OUTPUT}          Execute Command    ${CMD}
    [return]           ${OUTPUT}
    
Closing Connection
    [Documentation]   Closing all opened connection
    Close Connection