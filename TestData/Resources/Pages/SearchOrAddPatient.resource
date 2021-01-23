*** Settings ***
Documentation    This file deals with all operations in the dashboard page

Resource    ../common_functionality.robot

*** Variables ***
${PAT_LOCATOR}    Pat
${FIRSTNAME_LOC}    form_fname
${LASTNAME_LOC}    form_lname
${DOB_LOC}    form_DOB
${GENDER_LOC}    form_sex
${CREATE_LOC}    create
${MODAL_LOC}    modalframe
${CONFIRM_LOC}    xpath=//input[@value="Confirm Create New Patient"]
${CLOSE_BD_LOC}    

${HAPPY_BIRTHDAY_ALERT_LOCATOR}    //div[@class="closeDlgIframe"]
${VERIFY_PATIENT_DETAIL_LOCATOR}    //h2[contains(text(),'Medical Record Dashboard')]

*** Keywords ***

Switch to Pat Frame
    Select Frame    ${PAT_LOCATOR}

Input First Name
    [Arguments]    ${fname}
    Input Text    ${FIRSTNAME_LOC}    ${fname}    

Input Last Name
    [Arguments]    ${lname}
    Input Text    ${LASTNAME_LOC}    ${lname}
    
Input DOB
    [Arguments]    ${dob}
    Input Text    ${DOB_LOC}    ${dob}    

Select Gender
    [Arguments]    ${gen}
    Select From List By Label    ${GENDER_LOC}    ${gen}
    
Add Patient
    Click Element    ${CREATE_LOC}    
    
Switch Out of Pat Frame
    Unselect Frame
    
Switch To Modal Frame
    Select Frame    ${MODAL_LOC}
    
Confirm Create Patient
    Click Element    ${CONFIRM_LOC}    

Switch Out of Modal Frame
    Unselect Frame
    


Validate and Handle Alert Message
    [Arguments]    ${alertText}    
    #Alert Should be present    ${alertText}    
    ${actual text}    Handle Alert    
    Should Contain    ${actual text}    ${alertText}
    

Handle Happy Birthday Message
    Run Keyword And Ignore Error     Click Element     ${HAPPY_BIRTHDAY_ALERT_LOCATOR}
    
Verify Add Patient Detail
    [Arguments]    ${patient name}
    Element Should Contain     ${VERIFY_PATIENT_DETAIL_LOCATOR}    ${patient name}
    

    
