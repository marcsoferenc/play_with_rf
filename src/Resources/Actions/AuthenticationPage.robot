*** Settings ***
Library     SeleniumLibrary

Resource    ${EXECDIR}/src/Resources/PageObjects/AuthenticationPage.robot


*** Keywords ***
Enter Sign Up Email
    [Arguments]    ${email}
    Input Text    ${SIGN UP EMAIL}    ${email}

Click On Create Account Button
    Click Button    ${CREATE ACCOUNT BTN}

"${I}" Provide My Email Address
    Enter Sign Up Email    ${I}[email]
    Click On Create Account Button
