
*** Settings ***

Library     SeleniumLibrary  
Resource    ../variables/credentials.robot 
Resource    ../tests/saucedemo_test.robot

*** Variables ***

${L_inputId}               id:user-name 
${L_inputPassword}         id:password     
${L_loginButton}           id:login-button 


*** Keywords ***

connexion_reussie
    [Arguments]     ${username}            ${password}
    #Open Browser    ${monURL}              chrome
    
    Input Text      ${L_inputId}             ${username} 
    Input Text      ${L_inputPassword}       ${password}
    Click Button    ${L_loginButton}
    Location Should Be     https://www.saucedemo.com/inventory.html