*** Settings ***

Library     SeleniumLibrary 
Resource    ../pages/login_page.robot 
Resource    ../variables/credentials.robot  

Test Setup       Open Browser    ${monURL}    chrome   options=add_argument("--incognito")
Test Teardown    Close Browser



*** Test Cases ***
test connexion 
    [Tags]    POEI2-1060
    connexion_reussie    ${inputId}       ${inputPassword}


  