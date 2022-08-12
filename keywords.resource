*** Settings ***
Documentation   Keyword resource file for data driven testcase
Library         AppiumLibrary
Variables       Resources/Variables.py

*** Keywords ***
Teardown
    close application

Open Settings
       Open Application    ${APPIUM_SERVER}    platformName=${ANDROID_PLATFORM_NAME}    platformVersion=${ANDROID_PLATFORM_VERSION}     automationName=${ANDROID_AUTOMATION_NAME}
    ...    appPackage=${SETTINGS_APP_PACKAGE}    appActivity=${SETTINGS_APP_ACTIVITY}     appWaitActivity=${SETTINGS_APP_ACTIVITY}

Search
        click element     ${SEARCH}
        wait until element is visible       ${SEARCH_TEXT_BOX}

Input Search Text
        input text      ${SEARCH_TEXT_BOX}      About phone

Press Enter
        press keycode    66

Search settings options
        [Arguments]         ${Search_text}
        Open Settings
        Search
        input text      ${SEARCH_TEXT_BOX}           ${Search_text}
        press enter
        element text should be     ${SEARCH_TEXT_BOX}       ${Search_text}



