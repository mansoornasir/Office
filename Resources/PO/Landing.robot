*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LANDING_NAVIGATION_ELEMENT} =  xpath=//*[@id="tsf"]/div[2]/div/div[3]/center/input[1]

*** Keywords ***
Navigate To
    go to  ${URL}

Verify Page Loaded
    wait until page contains element  ${LANDING_NAVIGATION_ELEMENT}