*** Settings ***
Documentation    file for wishlist page 
Library    SeleniumLibrary

*** Variables ***

${size-btn}    css=[data-testid="size-btn-S"]
${productadd-to-cart}    css=[data-testid="product-detail-add-to-cart"]
${detail-back}    css=[data-testid="product-detail-back"]
${add-to-cart}    css=[data-testid="product-detail-add-to-cart"]
${cart-count}    css=[data-testid="cart-count"]
${cart-link}    css=[href="#/cart"]









*** Keywords ***
    
isDisplayed retour au catalogue
    Element Should Contain    ${detail-back}    Retour au catalogue

click S taille
    Click Element    ${size-btn}

click add to cart
    Click Element    ${add-to-cart}  

isDisplayed cart count 
    Element Text Should Be    ${cart-count}    1   

click cart
    Click Element    ${cart-link}
    
          
