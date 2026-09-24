*** Settings ***
Documentation    file for wishlist page 
Library    SeleniumLibrary

*** Variables ***

${l_panier}    css=.text-xl.font-medium.text-fg
${promo-input}    id=promo-input
${promo-apply}    css=[data-testid="cart-promo-apply"]
${cart-promo-error}    css=[data-testid="cart-promo-error"]
${cart-checkout-button}    css=[data-testid="cart-checkout-button"]






*** Keywords ***
    
isDisplayed Panier
    Element Should Contain    ${l_panier}    Panier

isDisplayed code promo invalid
    Element Should Contain    ${cart-promo-error}    invalide

Saisir code promo
    Input Text    ${promo-input}    SALIM10  
    Click Button    ${promo-apply}       

click commander
    Click Element    ${cart-checkout-button}