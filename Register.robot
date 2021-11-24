*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}      https://vaccine-haven.herokuapp.com/
${citizen_id}    9621054637448
${name}          Kongtapp
${surname}       Veerawattananun
${birth_date}    01/28/2000
${occupation}    Student
${phone_number}  0951153666
${address}       Home

*** Test Cases ***

RegisterTest
    open browser    ${url}    ${browser}
    click element   xpath://*[@id="register__link"]
    input text      id:citizen_id    ${citizen_id}
    input text      id:name          ${name}
    input text      id:surname       ${surname}
    input text      id:birth_date    ${birth_date}
    input text      id:occupation    ${occupation}
    input text      id:phone_number  ${phone_number}
    input text      id:address       ${address}
    click element   xpath://*[@id="register__btn"]


*** Keywords ***