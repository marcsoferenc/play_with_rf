*** Settings ***
Library     ${EXECDIR}/src/Libraries/Actors.py

Resource    ${EXECDIR}/src/Resources/Actions/AddProductPopup.robot
Resource    ${EXECDIR}/src/Resources/Actions/Header.robot
Resource    ${EXECDIR}/src/Resources/Actions/Navigations.robot
Resource    ${EXECDIR}/src/Resources/Actions/PopularProducts.robot
Resource    ${EXECDIR}/src/Resources/Observations/AddProductPopup.robot
Resource    ${EXECDIR}/src/Resources/Observations/Header.robot


*** Variables ***
${SEARCH TERM}    Printed


*** Test Cases ***
Add A Product To The Cart
    ${I} =    A Visitor User
    Given "${I}" Am On The Home Page
    When "${I}" Add "Blouse" To My Cart
    Then "${I}" Should See Add Product Popup
    When "${I}" Close Add Product Popup
    Then "${I}" Should See "1" Label On The Cart Icon


Add 3 Products To The Cart
    ${I} =    A Visitor User
    Given "${I}" Am On The Home Page
    When "${I}" Add "Blouse" To My Cart
    And "${I}" Close Add Product Popup
    And "${I}" Add "Faded Short Sleeve T-shirts" To My Cart
    And "${I}" Close Add Product Popup
    And "${I}" Add "Printed Dress" To My Cart
    And "${I}" Close Add Product Popup
    Then "${I}" Should See "3" Label On The Cart Icon
