*** Settings ***
Library   SeleniumLibrary
*** Keywords ***
Open URL
    Open Browser    https://opensource-demo.orangehrmlive.com/    chrome
    Maximize Browser Window
Verify LoginPage
    Page Should Contain Element    id=btnLogin        
    Element Text Should Be    id=logInPanelHeading    LOGIN Panel 
Login to application
    [Arguments]    ${UserName}    ${password }
     Input Text    id=txtUsername    ${UserName}
     Input Password    id=txtPassword    ${password }
     Click Button    id=btnLogin              