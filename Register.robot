*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}      https://vaccine-haven.herokuapp.com/
${citizen_id}   9621054637448

*** Test Cases ***

RegisterTest
    open browser  ${url}    ${browser}
    click element  xpath://*[@id="register__link"]
    input text  id:citizen_id    ${citizen_id}
    input text  id:name    Kongtapp
    input text  id:surname    Veerawattananun
    input text  id:birth_date     01/28/2000
    input text  id:occupation    Student
    input text  id:phone_number      0951153666
    input text  id:address    Home
    click element  xpath://*[@id="register__btn"]


*** Keywords ***