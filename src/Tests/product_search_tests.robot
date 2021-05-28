*** Settings ***
Library     ${EXECDIR}/src/Libraries/Actors.py

Resource    ${EXECDIR}/src/Resources/Actions/Navigations.robot
Resource    ${EXECDIR}/src/Resources/Actions/Header.robot
Resource    ${EXECDIR}/src/Resources/Observations/SearchResultPage.robot


*** Variables ***
${SEARCH TERM}    Printed


*** Test Cases ***
Search By Free Text
    ${I} =    A Visitor User
    Given "${I}" Am On The Home Page
    When "${I}" Search For "${SEARCH TERM}"
    Then "${I}" Should See Items That Match With The Entered Term: "${SEARCH TERM}"
