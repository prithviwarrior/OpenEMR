*** Settings ***
Documentation    This file will handle all the operation related to login page
    

Resource    ../common_functionality.robot

*** Variables ***
${USERNAME_LOC}    authUser
${PASSWORD_LOC}    clearPass
${LANGUAGE_LOCATOR}    languageChoice
${LOGIN LOCATOR}    //button[@type='submit']
${ERRORMESSAGE_LOCATOR}    //*[contains(text(),"Invalid ")]    


*** Keywords ***
Enter Username
    [Arguments]    ${username}
    Input Text    ${USERNAME_LOC}    ${username}

Enter Password
    [Arguments]    ${password}
    Input Text    ${PASSWORD_LOC}    ${password}    
        

Select Language
    [Arguments]    ${language}
    Select From List By Label    ${LANGUAGE_LOCATOR}        ${language}
    
Click Login
    Click Element       ${LOGIN LOCATOR}
    

Verify Error Message
    [Arguments]    ${error_message}
    Element Should Contain    ${ERRORMESSAGE_LOCATOR}    ${error_message}       