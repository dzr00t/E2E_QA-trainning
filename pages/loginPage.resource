*** Settings ***
Documentation    file for login page 
Library    SeleniumLibrary

*** Variables ***
#${comptes_dispo}    css=.text-sm.text-fg-muted.cursor-pointer.hover:text-fg.transition-colors
#${Ufirst_compte}    xpatth=(//div[contain(@class,'front-mono')])[2]/span
#${Pfirst_compte}    xpatth=(//div[contain(@class,'front-mono')])[2]/text()[last()]

${l_username}    id=username
${l_password}    id=password
${l_btn_login}    css=[data-testid="login-submit"]
${login-error}    css=[data-testid="login-error"]





*** Keywords ***
Choisir un compte dispo et se connecter
    #Click Element    ${comptes_dispo}
    #${user}=    Get Text    ${Ufirst_compte}
    #${pass}=    Get Text    ${Pfirst_compte}
    Input Text    ${l_username}    jean_dupont    
    Input Text    ${l_password}    Baguette42!        
    Click Button    ${l_btn_login}

Se connecter   
    [Arguments]    ${username}    ${password}
    Input Text    ${l_username}    ${username}
    Input Text    ${l_password}    ${password}
    Click Button    ${l_btn_login}

get mssg error
    ${mssg}    Get Text    ${login-error}  
    RETURN    ${mssg}          



    