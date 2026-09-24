*** Settings ***
Documentation    file for home page 
Library    SeleniumLibrary

*** Variables ***

${l_tousproduit}    css=.text-xl.font-medium.text-fg
${l_vetement}    css=[data-testid="sidebar-category-clothing"]
${l_like}    css=[data-testid="wishlist-btn-sauce-bolt-shirt"]
${l_wish_count}    css=[data-testid="wishlist-count"]
${l_wish_link}    css=[href="#/wishlist"]

${logout-button}    css=[data-testid="logout-button"]



*** Keywords ***
isDisplayed Tous les produits
    Element Should Contain    ${l_tousproduit}        Tous les produits

choisir Vetement
    Click Element    ${l_vetement}

click add to favoris 
    Click Element    ${l_like}

isDisplayed wish count
    Element Text Should Be    ${l_wish_count}    1

click wishlist 
    Click Element    ${l_wish_link}
    
click Deconnecter
    Click Button    ${logout-button}
