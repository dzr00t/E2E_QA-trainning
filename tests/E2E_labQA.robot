*** Settings ***
Documentation    teste du site web https://ssid-testing-agency.github.io/Lab.qa/#/login
Library    SeleniumLibrary
Resource    ../resources/keywords.resource
Resource    ../pages/homePage.resource
Resource    ../pages/loginPage.resource
Resource    ../pages/wishlistPage.resource
Resource    ../pages/productPage.resource
Resource    ../pages/cartPage.resource
Resource    ../pages/checkoutPage.resource

Library    ../data/datafake.py


Test Setup    init Navigateur
Test Teardown    fermer Navigateur

*** Test Cases ***
test E2E
    [Documentation]    test du parcour achat dun produit
    ${profil}=    Generer Profil
    Choisir un compte dispo et se connecter
    isDisplayed Tous les produits
    choisir Vetement
    click add to favoris
    isDisplayed wish count
    click wishlist
    isDisplayed ma wishlist
    click Choisir taille
    isDisplayed retour au catalogue
    click S taille
    click add to cart
    isDisplayed cart count
    click cart
    isDisplayed Panier
    Saisir code promo
    isDisplayed code promo invalid
    click commander
    Location Should Contain    checkout/info
    Remplire formulaire et continuer    ${profil}[prenom]    ${profil}[nom]    ${profil}[email]    ${profil}[code_postal]        
    Location Should Contain   checkout/review
    click checkout finish
    Location Should Contain    checkout/payment 
    remplir le moyen de payement    ${profil}[card_number]    ${profil}[Date_expiration]    ${profil}[cryptograme]    ${profil}[prenom]
    isDisplayed Confirmation
    click Retour catalogue
    click Deconnecter
    Location Should Contain    login


    


