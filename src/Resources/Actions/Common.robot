*** Settings ***
Library     SeleniumLibrary

Variables       ${EXECDIR}/src/Data/BrowserConfig.py


*** Keywords ***
Open Empty Browser
    Open Browser    about:blank    ${BROWSER}    remote_url=${REMOTE URL}
    Set Browser Implicit Wait    ${IMPLICIT WAIT TIME}
    Maximize Browser Window

Scroll To Element
    [Arguments]    ${locator}
    ${x} =    Get Horizontal Position  ${locator}
    ${y} =    Get Vertical Position    ${locator}
    Execute Javascript    window.scrollTo(${x}, ${y})
