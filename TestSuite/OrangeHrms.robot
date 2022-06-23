*** Settings ***
Library   SeleniumLibrary
Resource    ../ResourceFiles/LoginPage.robot
Resource    ../ResourceFiles/HomePage.robot
Resource    ../ResourceFiles/AdminPage.robot
Resource    ../ResourceFiles/Recruitment.robot
Resource    ../ResourceFiles/MyInfo.robot


*** Test Cases ***
Set Screenshot Directory
    Set Screenshot Directory    D:\just\OrangeDemo\Screenshots
Verify Login Page
    LoginPage.Open URL
    LoginPage.Verify LoginPage
    Login to application    Admin    admin123
Verify Home Page
    HomePage.Verify HeaderElements
Verify admin page 
    AdminPage.Go To Admin page    adash    ESS 
    AdminPage.Locate User    adash
    AdminPage.Go to Job
    
Verify recruitment
    Recruitment.Go To Recruitment
    Recruitment.Select data from datepicker    2018    Aug    30
Upload Photo
    MyInfo.Naviaget my info 
    MyInfo.upload image
    MyInfo.Edit Button
   