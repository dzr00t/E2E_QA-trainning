*** Settings ***
Documentation    file for keywords
Library    SeleniumLibrary
Resource    ../pages/loginPage.resource

*** Variables ***
${URL}    https://ssid-testing-agency.github.io/Lab.qa/#/login
${nav}    chrome

*** Keywords ***

data driven test
    [Arguments]    ${user-name}    ${pass-word}    ${result}
    Se connecter   ${user-name}    ${pass-word} 
    IF    "${result}" == "OK"
        Location Should Contain    /catalog        
    ELSE    
        ${mssg}    get mssg error
        Should Contain    ${mssg}    ne correspondent à aucun utilisateur de ce service  
    END



init Navigateur
    Open Browser   ${URL}   ${nav}  
    Set Selenium Implicit Wait    10s
fermer Navigateur
    Close Browser