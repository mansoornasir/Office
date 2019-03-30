*** Settings ***
Resource  ./PO/Landing.robot
Resource  ./PO/TopNav.robot
Resource  ./PO/Login.robot
Resource  ./PO/Footer.robot
Resource  ./PO/Admin.robot

*** Variables ***


*** Keywords ***
Go to Landing Page
    Landing.Navigate To
    Landing.Verify Page Loaded

Go to Admin Page
    Admin.Navigate To
    Admin.Verify Page Loaded

Login With Valid Credentials
    Go to Admin Page
    Admin.Fill Email
    Admin.Fill Password
    Admin.Click Login Button
