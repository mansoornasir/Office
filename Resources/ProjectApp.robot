*** Settings ***
Resource  ./PO/Landing.robot
Resource  ./PO/Admin.robot

*** Variables ***


*** Keywords ***
Acess Landing Page
    Landing.Navigate To
    Landing.Verify Page Loaded

Access Admin Page
    Admin.Navigate To
    Admin.Verify Page Loaded

Login With Valid Credentials
    Access Admin Page
    Admin.Fill Email
    Admin.Fill Password
    Admin.Click Login Button
    Admin.Verify Admin Page Loaded
