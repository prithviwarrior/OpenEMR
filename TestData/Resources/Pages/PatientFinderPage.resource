***Settings***
Documentation    Handle operation related to patient finder
...    ALl these are present in 
...    

Resource    ../common_functionality.robot

***Variables***
${FIN LOCATOR}    fin
${ADD NEW PATIENT LOCATOR}    
 
***KEYWORDS***
Switch to Fin Frame
    Select Frame    ${FIN_LOCATOR}

Create New Patient
    Click Element    ${ADD_NEW_PATIENT_LOCATOR}

Switch Out Frame
    Unselect Frame   