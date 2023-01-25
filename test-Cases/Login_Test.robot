*** Settings ***
Resource    ../Resources/Login-keywords.robot
Test Setup      Ouvrir le navigateur     ${URL}     ${Browser}
Test Teardown     Fermer le navigateur
Suite Setup    Log To Console    J'execute avant tous les tests
Suite Teardown    Log To Console    J'execute aprés tous les tests
*** Variables ***
${URL}=    https://admin-demo.nopcommerce.com/
${Browser}=    chrome
${User_Name}=    admin@yourstore.com
${Password}=    admin

*** Test Cases ***
LoginTestCase01
    Saisir le nom utilisateur        ${User_Name}
    Saisir le mot de passe        ${Password}
    Cliquer sur le bouton submit
    Valider que le mot Dashboard s'afficher
