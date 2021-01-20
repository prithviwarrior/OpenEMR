*** Settings ***
   
Resource    ../Resources/common_functionality.robot
Resource    ../Resources/Pages/LoginPage.resource
Resource    ../Resources/Pages/DashboardPage.resource

Test Setup    Launch Browser
Test Teardown    End Browser

Test Template    Verify_Valid_Credentials_Template


# TC1_ValidCredential
# Launch Browser
# Enter Username    admin    
# Enter Password    pass    
# Select Language    English (Indian)
# Click Login    
# Page Should Contain    Flow Board    


*** Test Cases ***
TC1    admin    pass    English (Indian)    Flow Board
TC2    accountant    accountant    English (Indian)    Flow Board
TC3    physician    physician    English (Indian)    Flow Board




***Keywords***
Verify_Valid_Credentials_Template
        [Arguments]    ${username}    ${password}    ${language}    ${expectedvalue}
        Enter Username    ${username}
        Enter Password    ${password}
        Select Language    ${language}
        Click Login    
        Dashboard Page Should Contain    ${expectedvalue}
        MouseOver On Name
        Click Logout
        