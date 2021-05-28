*** Settings ***
Library     SeleniumLibrary

Resource    ${EXECDIR}/src/Resources/Actions/Common.robot

Variables   ${EXECDIR}/src/Data/SUTConfig.py



*** Keywords ***
Navigate To
    [Arguments]    ${endpoint}
    Open Empty Browser
    ${url} =    Catenate    SEPARATOR=    ${BASE URL}    ${END POINT}
    Go To    ${url}

"${I}" Visit Automation Practice Webshop
    Navigate To    /

"${I}" Am On The Home Page
    Navigate To    /
