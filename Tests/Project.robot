*** Settings ***
Documentation  This is some project about blah blah blah
Resource  ../Resources/ProjectApp.robot
Resource  ../Resources/Common.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

#USAGE: robot -d results tests/Project.robot

*** Variables ***
${BROWSER} =  chrome
${URL} =  http://www.google.com.pk

*** Test Cases ***
Should be able to access "Landing" page
    [Documentation]  This is a test for landing page.
    [Tags]  LandingPage
    ProjectApp.Go to Landing Page
