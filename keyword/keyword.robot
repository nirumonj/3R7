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

    [arguments]     ${usernameInput}    ${passwordInput}
    Go to    https://sprint3r7.wordpress.com/
    Click Element    //*[@id="masthead"]/button
    Click Element     //*[@id="meta-2"]/ul/li[2]/a
    Input Text      ${usernameField}    ${usernameInput}
    Input Password  ${passwordField}    ${passwordInput}
    Unselect Checkbox    ${rememberMeCheckBox}
    Click Button    wp-submit
    Page should display login success
