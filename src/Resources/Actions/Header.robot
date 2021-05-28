*** Settings ***
Library     SeleniumLibrary

Resource    ${EXECDIR}/src/Resources/PageObjects/BasePage.robot
Resource    ${EXECDIR}/src/Resources/PageObjects/Header.robot


*** Keywords ***
"${I}" Click On Sign In Link
    Click Link    ${SIGN IN LINK}

"${I}" Search For "${term}"
    Input Text    ${SEARCH INPUT}    ${term}
    Click Element    ${SEARCH BUTTON}
