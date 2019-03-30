*** Settings ***
Documentation  This is some project about blah blah blah
Resource  ../Resources/ProjectApp.robot
Resource  ../Resources/Common.robot
#Suite Teardown    Close All Browsers
Test Setup  Begin Web Test
Test Teardown  End Web Test
#Test Teardown     Close All Browsers


#USAGE: robot -d results tests/Project.robot
#USAGE: robot -d results -v BROWSER:chrome -N Project -i [TestName] tests/Project.robot

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://testing.buyerdocs.com/

*** Test Cases ***
Should be able to access "Landing" page
    [Documentation]  This is a test for landing page.
    [Tags]  LandingPage
    ProjectApp.Acess Landing Page

Should be able to access "Admin" page
    [Documentation]  This is a test for admin page.
    [Tags]  AdminPage
    ProjectApp.Access Admin Page

Should Be Able To Login With Valid Credentials
    [Documentation]  This is a test for admin page.
    [Tags]  Login
    ProjectApp.Login With Valid Credentials