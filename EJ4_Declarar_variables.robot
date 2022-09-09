*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${browser}  Chrome
${pagina}  https://gmail.com/
${usuario}  your_mail@gmail.com
${contraseña}  yourPassword


*** Test Cases ***
Ingrear Cuenta De Correo
    Open browser    ${pagina}   ${browser}
    input text  id:identifierId   ${usuario}
    click element  xpath://button[ancestor::div[@id="identifierNext"]]
    Sleep  3s
    input text  name:password    ${contraseña}
    click element  xpath://*[@id="passwordNext"]/span/span
    Sleep   3s
    close browser

*** Keywords ***