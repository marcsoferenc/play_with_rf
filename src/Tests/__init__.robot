*** Settings ***
Library     SeleniumLibrary
Resource    ${EXECDIR}/src/Resources/Actions/Common.robot

#Test Setup      Open Empty Browser
Test Teardown   Close All Browsers
