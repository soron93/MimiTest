*** Settings ***
Documentation   This is a functional test suite for Mimi Hearning Technology

Library  AppiumLibrary

Resource    ../Resources/Common.robot
Resource    ../Resources/MimiApp.robot

Suite Setup  Begin App Test
Suite Teardown   End App Test

*** Variables ***
${LOGIN-IN-WITH-MIMI}   id=io.mimi.ht:id/alreadyHaveTv
${ENTER_EMAIL}    id=io.mimi.ht:id/loginEmail
${ENTER_PASSWORD}    id=io.mimi.ht:id/loginPassword
${USERNAME}     your_new_qa@protonmail.com
${PASSWORD}     QA!2345678
${INCORRECT_PASSWORD}   QA!2345679
${LOGIN_BUTTON}     id=io.mimi.ht:id/loginButton
${NAME_HEARING_TEST}    EarsForFears
 
*** Test Cases ***
User should be able to log in and out of their account
    [Documentation]  Checks that user data is stored and is valid
    [Tags]  Current
    MimiApp.User logs in
    MimiApp.User logs out

User should not be able to log in into their account if incorrect credentials are provided
    [Documentation]  Checks that invalid credentials wont grant access    
    [Tags]  Current
    MimiApp.Check if user logs in with incorrect password

User should be able to view, rename and export their Audiogram
    [Documentation]  Checks that user can see audiogram profile
    [Tags]  Smoke
    MimiApp.User logs in
    MimiApp.Checks if user can rename and export the Audiogram

User should be able manage their accounts
    [Documentation]  Checks that user can see audiogram profile
    [Tags]  Smoke
    MimiApp.Checks if user can manage mimi account

User should be able to update and retake hearing test
    [Documentation]  Check that Hearing Id can be updatedi
    [Tags]  Smoke
    MimiApp.Checks if user can Update Hearing ID        

User Logs Out
    MimiApp.User logs out
