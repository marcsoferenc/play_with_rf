*** Settings ***
Library     SeleniumLibrary

Resource    ${EXECDIR}/src/Resources/PageObjects/AddProductPopup.robot


*** Keywords ***
"${I}" Close Add Product Popup
    Wait Until Element Is Visible    ${CLOSE POPUP}
    Click Element    ${CLOSE POPUP}
