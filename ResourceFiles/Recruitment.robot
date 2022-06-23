*** Settings ***
Library   SeleniumLibrary
*** Keywords ***
  
Go To Recruitment
    Click Element    xpath=//b[text()='Recruitment']
    Sleep    4        
Select data from datepicker
    [Arguments]    ${Year}    ${Month}    ${Date}
   Click Element    id=candidateSearch_fromDate  
   sleep  3
   Click Element    xpath=//a[@data-event='click']//span  
   Select From List By value    //*[@class='ui-datepicker-year']    ${Year}
   Select From List By Label    //*[@class='ui-datepicker-month']    ${Month}
   Click Link    link:${Date}    