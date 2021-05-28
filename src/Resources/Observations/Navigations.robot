*** Settings ***
Library     SeleniumLibrary

Resource    ${EXECDIR}/src/Resources/Observations/BasePage.robot


*** Keywords ***
"${I}" Should Be On The Home Page
    Title Should Be    My Store

"${I}" Should Be On The Authentication Page
    Page Title Should Be    AUTHENTICATION

"${I}" Should Be On The My Account Page
    Page Title Should Be    MY ACCOUNT
