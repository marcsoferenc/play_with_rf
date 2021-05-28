*** Settings ***
Library     SeleniumLibrary

Resource    ${EXECDIR}/src/Resources/PageObjects/AddProductPopup.robot


*** Keywords ***
"${I}" Should See Add Product Popup
    Wait Until Element Is Visible    ${ADD PRODUCT POPUP}
    Element Should Contain    ${ADD PRODUCT POPUP}    Product successfully added to your shopping cart
