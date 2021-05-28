*** Settings ***
Library     ${EXECDIR}/src/Libraries/Actors.py

Resource    ${EXECDIR}/src/Resources/Actions/Navigations.robot
Resource    ${EXECDIR}/src/Resources/Observations/Navigations.robot


*** Test Cases ***
Visiting Automation Practice Webshop
    ${I} =    Given A Visitor User
    When "${I}" Visit Automation Practice Webshop
    Then "${I}" Should Be On The Home Page
