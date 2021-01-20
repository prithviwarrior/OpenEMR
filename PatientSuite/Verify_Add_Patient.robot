*** Settings ***
Library    OperatingSystem        
Library    SeleniumLibrary    

Resource    ../Resources/common_functionality.robot
Resource    ../Resources/Pages/LoginPage.resource
Resource    ../Resources/Pages/DashboardPage.resource
Resource    ../Resources/Pages/PatientFinderPage.resource
Resource    ../Resources/Pages/SearchOrAddPatient.resource

*** Test Cases ***
TC1_ValidCredential
    Launch Browser

    Enter Username    admin    
    Enter Password    pass    
    Select Language    English (Indian)
    Click Login    
    Page Should Contain    Flow Board    
    
    MouseOver on Patient_Client
    Click Patient
    
    Switch to Fin Frame
    
    Create New Patient
    
    Switch Out Frame
    
    Switch to Pat Frame
    
    Input First Name    Paul
    
    Input Last Name    Walker

    Input DOB    2021-01-16
    
    Select Gender    Male
    
    Add Patient
    
    Switch Out of Pat Frame
    
    Switch To Modal Frame
    
    Confirm Create Patient
    
    Switch Out of Modal Frame
    
    Validate and Handle Alert Message     AlertText