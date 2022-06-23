*** Settings ***
Library   SeleniumLibrary
*** Keywords ***
  
Go To Admin page
     [Arguments]    ${Username}    ${Role}
    Click Element    xpath=//b[text()='Admin']
    Input Text    id=searchSystemUser_userName    ${Username}
    Select From List By label    id=searchSystemUser_userType     ${Role}           
    Click Button    id=searchBtn    
Locate User
    
   [Arguments]    ${Username}
   Page Should Contain Checkbox    xpath=//a[text()='${Username}']/preceding::td/input[@type='checkbox']    
   Select Checkbox    xpath=//a[text()='${Username}']/preceding::td/input[@type='checkbox']
   Click Element    id=resetBtn     
Go to Job
    Mouse Over    id=menu_admin_Job

