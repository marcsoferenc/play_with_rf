*** Settings ***
Library     SeleniumLibrary

Resource    ${EXECDIR}/src/Resources/Actions/Common.robot
Resource    ${EXECDIR}/src/Resources/PageObjects/PopularProducts.robot

*** Keywords ***
"${I}" Add "Faded Short Sleeve T-shirts" To My Cart
    Scroll To Element    ${FIRST_ITEM_IMG}
    Mouse Over    ${FIRST_ITEM_IMG}
    Wait Until Element Is Visible    ${FIRST_ITEM_BTN}
    Scroll To Element    ${FIRST_ITEM_BTN}
    Click Element    ${FIRST_ITEM_BTN}

"${I}" Add "Blouse" To My Cart
    Scroll To Element    ${SECOND_ITEM_IMG}
    Mouse Over    ${SECOND_ITEM_IMG}
    Wait Until Element Is Visible    ${SECOND_ITEM_BTN}
    Scroll To Element    ${SECOND_ITEM_BTN}
    Click Element    ${SECOND_ITEM_BTN}


"${I}" Add "Printed Dress" To My Cart
    Scroll To Element    ${THIRD_ITEM_IMG}
    Mouse Over    ${THIRD_ITEM_IMG}
    Wait Until Element Is Visible    ${THIRD_ITEM_BTN}
    Scroll To Element    ${THIRD_ITEM_BTN}
    Click Element    ${THIRD_ITEM_BTN}
