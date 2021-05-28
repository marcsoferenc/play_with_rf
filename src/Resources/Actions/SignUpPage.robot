*** Settings ***
Library     SeleniumLibrary

Resource    ${EXECDIR}/src/Resources/PageObjects/SignUpPage.robot


*** Keywords ***
Enter First Name
    [Arguments]    ${first_name}
    Input Text    ${FIRST NAME INPUT}    ${first_name}

Enter Last Name
    [Arguments]    ${last_name}
    Input Text    ${LAST NAME INPUT}    ${last_name}

Enter Password
    [Arguments]    ${password}
    Input Password    ${PASSWORD INPUT}    ${password}

Enter Address
    [Arguments]    ${address}
    Input Text    ${ADDRESS INPUT}    ${address}

Enter City
    [Arguments]    ${city}
    Input Text    ${CITY INPUT}    ${city}

Select State
    [Arguments]    ${state}
    Select From List By Label    ${STATE SELECT}    ${state}

Enter Post Code
    [Arguments]    ${post_code}
    Input Text    ${POST CODE INPUT}    ${post_code}

Enter Mobile Phone
    [Arguments]    ${mobile_phone}
    Input Text    ${MOBILE INPUT}    ${mobile_phone}

Click On Register Button
    Click Element    ${REGISTER BUTTON}

"${I}" Fill Out Sign Up Form
    Enter First Name    ${I}[first_name]
    Enter Last Name    ${I}[last_name]
    Enter Password    ${I}[password]
    Enter Address    ${I}[address]
    Enter City    ${I}[city]
    Select State    ${I}[state]
    Enter Post Code    ${I}[post_code]
    Enter Mobile Phone    ${I}[mobile]
    Click On Register Button
