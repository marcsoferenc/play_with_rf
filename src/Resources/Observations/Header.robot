*** Settings ***
Library     SeleniumLibrary

Resource    ${EXECDIR}/src/Resources/PageObjects/Header.robot


*** Keywords ***
"${I}" Should Be Logged In
    Element Should Contain    ${USER NAME LINK}    ${I}[first_name]
