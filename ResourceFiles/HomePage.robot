*** Settings ***
Library   SeleniumLibrary

   
*** Keywords ***
Verify HeaderElements
    @{Headers}    Get WebElements    xpath=//a[@class='firstLevelMenu']//b
    
    FOR   ${Jan}    IN    @{Headers}
        
          ${text}  Get Text    ${Jan}
                 
          Log    ${text} 
          

    END  
    
 
  
*** Variables ***

 @{Ele}    Admin    PIM    Leave    Time    Recruitment    My Info    Performance    Dashboard    Directory    Maintenance    Buzz          