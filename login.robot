*** Settings ***
Library    Selenium2Library
Suite Setup     Open Browser    https://sprint3r7.wordpress.com/
Test Setup     ไปที่หน้าล็อกอิน
Suite Teardown      Close Browser
Resource    keyword/keyword.robot

*** Test Cases ***
Login Success with no remember feature
    Login    sprint3r7    WorkingSoftware
