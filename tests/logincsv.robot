*** Settings ***
Documentation    teste login avec des idf valid et non valide du site web https://ssid-testing-agency.github.io/Lab.qa/#/login 
Library    SeleniumLibrary
Library    DataDriver    file=../data2/jdd.csv    dialect=excel    encoding=utf-8
Resource    ../resources/keywords.resource

Test Setup    init Navigateur
Test Teardown    fermer Navigateur

Test Template    parcour avec jdd csv
*** Keywords ***

parcour avec jdd csv
    [Arguments]    ${user-name}    ${pass-word}    ${result}
    Se connecter   ${user-name}    ${pass-word} 
    IF    "${result}" == "OK"
        Wait Until Location Contains    /catalog        
    ELSE     
        Element Should Be Visible    ${login-error}   
    END


*** Test Cases ***
e2E





    


