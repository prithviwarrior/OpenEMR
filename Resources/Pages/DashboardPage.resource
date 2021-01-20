*** Settings ***
Documentation    This file deals with all operations in the dashboard page

Resource    ../common_functionality.robot

*** Variables ***
${NAME_LOC}    //span[@data-bind="text:fname"]
${LOGOUT_LOC}    //li[text()='Logout']
${PATIENT_CLIENT_LOC}    //div[text()='Patient/Client']
${Patient_LOC}    //div[text()='Patients']


*** Keywords ***

Dashboard Page Should Contain
    [Arguments]    ${pagetext}
    Page Should Contain    ${pagetext}    

MouseOver On Name
    Mouse Over    ${NAME_LOC}


Click Logout
    Click Element    ${LOGOUT_LOC}    
    

MouseOver on Patient_Client
    Mouse Over    ${PATIENT_CLIENT_LOC}
    
Click Patient
    Click Element    ${Patient_LOC}  
    
  
    