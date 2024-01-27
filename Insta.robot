*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${URL}        https://www.instagram.com/

*** Keywords ***
Open the browser
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
Close the browser
    Close browser
Open Login Page
    Go To   ${URL}
Input Username
    [Arguments]     ${USERNAME}
    Input Text    xpath://*[@id="loginForm"]/div/div[1]/div/label/input    ${USERNAME}
Input Pwd
    [Arguments]     ${PASSWORD}
    Input Text    name=password    ${PASSWORD}
Click Login
    Click Button    xpath=//button[contains(@type, 'submit')]
Error message
    Page Should Contain    Please try

