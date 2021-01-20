*** Settings ***
Resource    ../Resources/common_functionality.robot
Resource    ../Resources/Pages/LoginPage.resource
Resource    ../Resources/Pages/DashboardPage.resource

Suite Setup    Launch Browser
Suite Teardown    End Browser

*** Test Cases ***

TC1_Invalid_Credentials_Test
    Launch Browser    
    Input Text    name=authUser    admin123    
    Input Password    name=clearPass    pass    
    Select From List By Label   name=languageChoice    English (Indian)
    Click Element    xpath=//button[@type='submit'] 
    Element Should Contain    //*[contains(text(),'Invalid')]      Invalid username or password    
    
    





      
    
       
    