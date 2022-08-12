*** Settings ***
Documentation     This script Opens the Settings Menu options using data driven approach
Library           AppiumLibrary
Library           DataDriver     Resources/testdata.xlsx      Sheet1
Resource          keywords.resource
Test Template     Settings Template
Suite Teardown    Close application

*** Keywords ***
Settings Template
    [Arguments]     ${Menu_name}
    Search settings options     ${Menu_name}

*** Test Cases ***
Explore Android settings:${Menu_name}        ${Menu_name}
    [Documentation]    Data driven settings testcase



