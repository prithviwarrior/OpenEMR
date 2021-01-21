*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    
Library    String    
Library    Collections     

*** Variables ***
${URL}    sanket
@{colours}    red    blue    yellow
&{dictionary}    name=sanket    place=maharashtra


*** Test Cases ***
TC1_ValidCredential
    Log To Console    ${dictionary}[name]
    
    ${name}    Set Variable    sanket
    
    Log To Console    ${colours}[0]    
    
    FOR    ${colours}    IN    @{colours}
        Log To Console    ${colours}
    END     
    
    Append To List    ${colours}    x
    FOR    ${colours}    IN    @{colours}
        Log To Console    ${colours}
    END        
    
TC2_test
    
    ${val}    Set Variable    $165.09
    ${val}    Strip String    ${val}    mode=both    characters=$
    Convert To Number    ${val}
    ${sum}    Evaluate    ${val} + 2    
    Log To Console    ${sum}

