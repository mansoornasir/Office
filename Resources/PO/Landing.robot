*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LANDING_NAVIGATION_ELEMENT} =  css=[href='https://testing.buyerdocs.com/user/home']

*** Keywords ***
Navigate To
    go to  ${URL}

Verify Page Loaded
    wait until page contains element  ${LANDING_NAVIGATION_ELEMENT}