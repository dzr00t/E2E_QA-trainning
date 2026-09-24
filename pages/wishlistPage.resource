*** Settings ***
Documentation    file for wishlist page 
Library    SeleniumLibrary

*** Variables ***

${l_mywishlist}    css=.text-xl.font-medium.text-fg
${l_choisirtaille}    css=[data-testid="wishlist-choose-size-sauce-bolt-shirt"]



*** Keywords ***
    
isDisplayed ma wishlist
    Element Should Contain    ${l_mywishlist}    Ma wishlist

click Choisir taille
    Click Element    ${l_choisirtaille}    
