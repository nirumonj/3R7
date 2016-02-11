*** Variables ***
${LoginPage}    https://sprint3r7.wordpress.com/wp-login.php
${usernameField}    user_login
${passwordField}    user_pass
${rememberMeCheckBox}   rememberme


*** Keywords ***
Open Browser to login page
    Open Browser    ${LoginPage}


Input valid credential
    Input Text      ${usernameField}    sprint3r7
    Input Password  ${passwordField}    WorkingSoftware

Press Submit
    Submit Form

Page should display login success
    Page Should Contain     Dashboard



ไปที่หน้าล็อกอิน
    Go to   ${LoginPage}

Input invalid credential
    Input Text      ${usernameField}    WorkingSoftware
    Input Password  ${passwordField}      WorkingSoftware


Press Login Button
    Click Button    login_button

Page should display login fail
    Wait Until Page contains    Error



Login
    [arguments]     ${usernameInput}    ${passwordInput}    ${message}
    Go to    https://sprint3r7.wordpress.com/
    Wait Until Element Is Visible    //*[@id="masthead"]/button
    Click Element    //*[@id="masthead"]/button
    Wait Until Element Is Visible     //*[@id="meta-2"]/ul/li[2]/a
    Click Element     //*[@id="meta-2"]/ul/li[2]/a
    Wait Until Element Is Visible     ${usernameField}
    Input Text      ${usernameField}    ${usernameInput}
    Input Password  ${passwordField}    ${passwordInput}
    Unselect Checkbox    ${rememberMeCheckBox}
    Click Button    wp-submit
    Wait Until Page Contains    ${message}



LoginRemember
    [arguments]     ${usernameInput}    ${passwordInput}    ${message}
    Go to    https://sprint3r7.wordpress.com/
    Wait Until Element Is Visible    //*[@id="masthead"]/button
    Click Element    //*[@id="masthead"]/button
    Wait Until Element Is Visible     //*[@id="meta-2"]/ul/li[2]/a
    Click Element     //*[@id="meta-2"]/ul/li[2]/a
    Wait Until Element Is Visible     ${usernameField}
    Input Text      ${usernameField}    ${usernameInput}
    Input Password  ${passwordField}    ${passwordInput}
    Select Checkbox    ${rememberMeCheckBox}
    Click Button    wp-submit
    Wait Until Page Contains    ${message}
