*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${browser}  Chrome
${pagina}  https://gmail.com/
${usuario}  your_mail@gmail.com
${contraseña}  tucontraseña


*** Test Cases ***
Ingresar Cuenta De Correo
    abrir_navegador
    ingresar_a_correo1
    cerrar_navegador
    abrir_navegador
    ingresar_a_correo2
    cerrar_navegador

*** Keywords ***
ingresar_a_correo1
    input text  id:identifierId   ${usuario}
    click element  xpath://button[ancestor::div[@id="identifierNext"]]
    Sleep  3s
    input text  name:password    ${contraseña}
    click element  xpath://*[@id="passwordNext"]/span/span
    Sleep   3s

ingresar_a_correo2
    input text  id:identifierId   ${usuario}
    click element  xpath://button[ancestor::div[@id="identifierNext"]]
    Sleep  3s
    input text  name:password    ${contraseña}
    click element  xpath://*[@id="passwordNext"]/span/span
    Sleep   3s

abrir_navegador
    Open browser    ${pagina}   ${browser}

cerrar_navegador
    close browser