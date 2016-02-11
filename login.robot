*** Settings ***
Library    Selenium2Library
Suite Setup     Open Browser    https://sprint3r7.wordpress.com/
Test Setup     ไปที่หน้าล็อกอิน
Suite Teardown      Close Browser
Resource    keyword/keyword.robot

*** Test Cases ***
#Login1
    #Login    sprint3r7    WorkingSoftware    Dashboard
Login with no remember feature
    [template]    Login
    sprint3r7    WorkingSoftware    Dashboard
    test    test    Email or Username
    sprint3r7    test    ERROR
    test    WorkingSoftware    Email or Username
    ${EMPTY}    ${EMPTY}    Email or Username
    ${EMPTY}    test    ERROR:
    test    ${EMPTY}    Email or Username

Login with remember feature
    LoginRemember    sprint3r7    WorkingSoftware    Dashboard
