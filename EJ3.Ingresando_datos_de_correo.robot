*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Ingresar Cuenta De Corre
    Open browser    https://gmail.com/   Chrome
    input text  id:identifierId    your_email@gmail.com
    click element  xpath://button[ancestor::div[@id="identifierNext"]]
    Sleep   3s
    input text  name:password    tupassword
    click element  xpath://*[@id="passwordNext"]/span/span
    Sleep   5s
    close browser

*** Keywords ***