*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${EMAIL_FIELD} =            css=#email
${ADMIN_URL} =              https://testing.buyerdocs.com/login
${VALID_EMAIL} =            test@test.test
${VALID_PASSWORD} =         buyerdocsisgreat
${PASSWORD_FIELD} =         css=#password
${LOGIN_BUTTON} =           css=#adminLoginButton


*** Keywords ***
Navigate To
    go to  ${ADMIN_URL}

Verify Page Loaded
    wait until page contains element  ${EMAIL_FIELD}

Fill Email
    Input Text  ${EMAIL_FIELD}  ${VALID_EMAIL}

Fill Password
    Input Text  ${EMAIL_FIELD}  ${VALID_EMAIL}

Click Login Button
    Click Button  ${LOGIN_BUTTON}