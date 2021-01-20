*** Settings ***
Documentation    This file contains browser activity keywords
...    and the screenshot directory

Library    OperatingSystem        
Library    SeleniumLibrary    



*** Keywords ***

Launch Browser
    Append To Environment Variable    Path    ${OUTPUT_DIR}${/}driver
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://demo.openemr.io/b/openemr/interface/login/login.php?site=default 
    
End Browser
    Close Browser