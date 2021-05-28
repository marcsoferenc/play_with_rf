*** Settings ***
Library     ${EXECDIR}/src/Libraries/Actors.py

Resource    ${EXECDIR}/src/Resources/Actions/AuthenticationPage.robot
Resource    ${EXECDIR}/src/Resources/Actions/Navigations.robot
Resource    ${EXECDIR}/src/Resources/Actions/Header.robot
Resource    ${EXECDIR}/src/Resources/Actions/SignUpPage.robot
Resource    ${EXECDIR}/src/Resources/Observations/Navigations.robot
Resource    ${EXECDIR}/src/Resources/Observations/Header.robot


*** Test Cases ***
Access Registration Form
    ${I} =    A Visitor User
    Given "${I}" Am On The Home Page
    When "${I}" Click On Sign In Link
    Then "${I}" Should Be On The Authentication Page

Success Registration
    ${I} =    A Visitor User
    Given "${I}" Am On The Authentication Page
    When "${I}" Provide My Email Address
    And "${I}" Fill Out Sign Up Form
    Then "${I}" Should Be Logged In
    And "${I}" Should Be On The My Account Page
