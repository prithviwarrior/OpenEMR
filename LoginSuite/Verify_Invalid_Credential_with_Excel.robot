*** Settings ***
Documentation    Install Data Driver using pip
...    pip install --upgrade robotframework-datadriver[XLS]
...    pip install --upgrade robotframework-datadriver

Library    DataDriver    file=../TestData/OpenEmrData.xlsx    sheet_name=Verify_Inalid_Credential
   
Resource    ../Resources/common_functionality.robot
Resource    ../Resources/Pages/LoginPage.resource
Resource    ../Resources/Pages/DashboardPage.resource

Test Setup    Launch Browser
Test Teardown    End Browser

Test Template    Verify_Invalid_Credentials

*** Test Cases ***
Verify_Invalid_Credentials_Test_${username}   
         
*** Keywords ***
Verify_Invalid_Credentials
    [Arguments]    ${username}    ${password}    ${language}    ${expectedvalue}

    Enter Username    ${username}    
    Enter Password    ${password}    
    Select Language    ${language}
    Click Login 
    
    Dashboard Page Should Contain    ${expectedvalue}  
    MouseOver On Name
    Click Logout 
    