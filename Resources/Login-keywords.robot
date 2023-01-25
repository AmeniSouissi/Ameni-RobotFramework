*** Settings ***
Library    SeleniumLibrary
Variables     ../PageObjects/Locators.py

*** Keywords ***
 Ouvrir le navigateur
    [Arguments]    ${URL}    ${Browser}
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window

Saisir le nom utilisateur 
    [Arguments]    ${user}
    Input Text    ${txt_LoginuserName}    ${user}    

Saisir le mot de passe 
    [Arguments]    ${Pass}
    Input Text    ${txt_LoginPass}    ${Pass}   

Cliquer sur le bouton submit
    Click Button     ${Btn_LoginBtn}


Valider que le mot Dashboard s'afficher
    Page Should Contain    Dashboard

Fermer le navigateur
    Sleep    3
    Close Browser