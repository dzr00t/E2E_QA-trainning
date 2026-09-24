*** Settings ***
Documentation    teste login avec des idf valid et non valide du site web https://ssid-testing-agency.github.io/Lab.qa/#/login 
Library    SeleniumLibrary
Resource    ../resources/keywords.resource



Test Setup    init Navigateur
Test Teardown    fermer Navigateur

Test Template    data driven test

*** Test Cases ***    user-name    pass-word    result  
login valide    jean_dupont    Baguette42!    OK
login invalide    FAKE    FAKE    KO 



    


