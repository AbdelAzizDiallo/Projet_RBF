*** Settings ***

Library     SeleniumLibrary 
Resource    ../pages/login_page.robot 
Resource    ../tests/saucedemo_test.robot


*** Variables ***
${monURL}   https://www.saucedemo.com/         
${inputId}               standard_user 
${inputPassword}         secret_sauce    




