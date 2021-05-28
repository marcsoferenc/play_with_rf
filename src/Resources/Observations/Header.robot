*** Settings ***
Library     SeleniumLibrary

Resource    ${EXECDIR}/src/Resources/Actions/Common.robot
Resource    ${EXECDIR}/src/Resources/PageObjects/Header.robot


*** Keywords ***
"${I}" Should Be Logged In
    Wait Until Element Is Visible    ${USER NAME LINK}
    Element Should Contain    ${USER NAME LINK}    ${I}[first_name]

"${I}" Should See "${count}" Label On The Cart Icon
    Scroll To Element    ${CART_COUNT}
    Wait Until Element Is Visible    ${CART_COUNT}
    Element Should Contain    ${CART_COUNT}    ${count}
