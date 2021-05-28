*** Settings ***
Library     SeleniumLibrary

Variables       ${EXECDIR}/src/Data/BrowserConfig.py


*** Keywords ***
Open Empty Browser
    Open Browser    about:blank    remote_url=${REMOTE URL}
    Set Browser Implicit Wait    ${IMPLICIT WAIT TIME}
    Maximize Browser Window
