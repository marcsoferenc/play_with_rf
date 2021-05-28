*** Settings ***
Library     SeleniumLibrary

Resource    ${EXECDIR}/src/Resources/PageObjects/Header.robot


*** Keywords ***
"${I}" Click On Sign In Link
    Click Link    ${SIGN IN LINK}
