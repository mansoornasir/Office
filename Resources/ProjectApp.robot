*** Settings ***
Resource  ./PO/Landing.robot
Resource  ./PO/TopNav.robot
Resource  ./PO/Login.robot
Resource  ./PO/Footer.robot
*** Variables ***


*** Keywords ***
Go to Landing Page
    Landing.Navigate To
    Landing.Verify Page Loaded