*** Settings ***
Library     SeleniumLibrary

Resource    ${EXECDIR}/src/Resources/PageObjects/BasePage.robot


*** Keywords ***
Page Title Should Be
    [Arguments]     ${title}
    Element Text Should Be    ${PAGE_TITLE}    ${title}
