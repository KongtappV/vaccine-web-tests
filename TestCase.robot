*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}          https://vaccine-haven.herokuapp.com/
${citizen_id}   9621054637448
${site_name}    OGYHSite
${vaccine}      Astra

*** Test Cases ***
HomeTest
#    create webdriver  chrome    executable_path="C:\Drivers\chromedriver_win32\chromedriver.exe"
    open browser  ${url}     ${browser}
    maximize browser window
    page should contain element   id:nav__info__link
    page should contain element   id:nav__register__link

ReservationTest
    click element       id:reserve__link
    input text          id:citizen_id               ${citizen_id}
    Select From List by Value  name:site_name       ${site_name}
    Select From List by Value  name:vaccine_name    ${vaccine}
    click element       id:reserve__btn
    sleep               3

CancelReservationTest
    GO TO MY INFO
    wait until element contains  id:reserve_vaccine_value   ${vaccine}
    wait until element contains  id:reserve_site_value      ${site_name}
    page should contain element  id:reserve_vaccine_value
    page should contain element  id:reserve_site_value
    click element   id:cancel__btn
    sleep           3
    close browser

*** Keywords ***
GO TO MY INFO
    click element   id:nav__info__link
    input text      id:citizen_id   ${citizen_id}
    click element   id:info__btn
