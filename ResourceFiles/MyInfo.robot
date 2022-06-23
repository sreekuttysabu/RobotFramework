*** Settings ***
Library   SeleniumLibrary
*** Keywords ***
  
Naviaget my info 
   
   Click Element    id=menu_pim_viewMyDetails    



upload image
    Click Element    xpath=//a[@href='/index.php/pim/viewPhotograph/empNumber/7']//img[1]
    Choose File    id=photofile    C:/Users/Sreek/Downloads/Sandeep Sankar copy.jpg
    
Edit Button
     Click Element    xpath=//*[@id="sidenav"]/li[1]/a
     Check Enabled
    
Click button edit 
    
    Click Element    id=btnSave 
    
Check Enabled 
       ${Val}  Element Should Be Enabled    id=btnSave 
       Run Keyword If    ${Val} == None     NewTest
   
 NewTest 
    ${sucess}  Set Variable    sreekutty   
      Log      ${sucess}
       
        
       
     
 