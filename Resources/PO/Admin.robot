*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${EMAIL_FIELD} =            css=#email
${ADMIN_URL} =              https://testing.buyerdocs.com/login
${VALID_EMAIL} =            test@test.test
${VALID_PASSWORD} =         buyerdocsisgreat
${PASSWORD_FIELD} =         css=#password
${LOGIN_BUTTON} =           css=#adminLoginButton
${LOGOUT_LINK} =            css=[href='https://testing.buyerdocs.com/logout']

*** Keywords ***

Navigate To
    Go To  ${ADMIN_URL}

Verify Page Loaded
    wait until page contains element  ${EMAIL_FIELD}

Fill Email
    Input Text  ${EMAIL_FIELD}  ${VALID_EMAIL}

Fill Password
    Input Text  ${PASSWORD_FIELD}  ${VALID_PASSWORD}

Click Login Button
    Click Button  ${LOGIN_BUTTON}

Verify Admin Page Loaded
    wait until page contains element  ${LOGOUT_LINK}