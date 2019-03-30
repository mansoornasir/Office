*** Settings ***
Documentation  We can use this file to read from external files like CSV, JSON and XML etc.
Library  ../CustomLibs/Read_External_File.py

*** Keywords ***
Get CSV Data
    [Arguments]  ${FilePath}
    ${Data} =  read csv file  ${FilePath}
    [Return]  ${Data}


Get XML Data
    [Arguments]  ${FilePath}
    ${Data} =  read xml file  ${FilePath}
    [Return]  ${Data}


Get JSON Data
    [Arguments]  ${FilePath}
    ${Data} =  read json file  ${FilePath}
    [Return]  ${Data}