*** Settings ***
Documentation    file for checkout page 
Library    SeleniumLibrary

*** Variables ***


${first-name}    id=first-name
${last-name}    id=last-name
${email}    id=email
${postal-code}    id=postal-code
${delivery-pickup}    css=[data-testid="delivery-pickup"]
${checkout-continue}    css=[data-testid="checkout-continue"]
${checkout-finish}    css=[data-testid="checkout-finish"]

${card-number}    id=card-number
${card-expiry}    id=card-expiry
${card-cvc}    id=card-cvc
${card-name}    id=card-name

${payment-submit}    css=[data-testid="payment-submit"]
${confirmation-title}    css=[data-testid="confirmation-title"]

${retour-catalog}    css=[data-testid="confirmation-home"]









*** Keywords ***
Remplire formulaire et continuer
    [Arguments]    ${fn}    ${ln}    ${em}    ${codeP}    
    Input Text    ${first-name}   ${fn}
    Input Text    ${last-name}   ${ln}
    Input Text    ${email}   ${em}
    Input Text    ${postal-code}   ${codeP} 
    Click Element   ${delivery-pickup} 
    Click Element    ${checkout-continue}

click checkout finish
    Click Element  ${checkout-finish} 

remplir le moyen de payement 
    [Arguments]    ${c_n}    ${date}    ${cvc}    ${fullname}
    Input Text    ${card-number}    ${c_n} 
    Input Text    ${card-expiry}    ${date}  
    Input Text    ${card-cvc}    ${cvc}
    Input Text    ${card-name}    ${fullname}
    Click Element  ${payment-submit}       

isDisplayed Confirmation
    Wait Until Element Is Visible    ${confirmation-title}
    #Element Text Should Be    ${confirmation-title}    Commande confirmée !

click Retour catalogue
    Click Element    ${retour-catalog}         




    
    

