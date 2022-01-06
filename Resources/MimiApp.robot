*** Settings ***
Documentation  These are custom keywords utilizing the page object or the PO directory files. new entries

Library  AppiumLibrary
Resource  ../Resources/PO/Audiogram.robot
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/LoginLogout.robot
Resource  ../Resources/PO/MimiAccount.robot
Resource  ../Resources/PO/HearingID.robot

*** Keywords ***
User logs in
    LandingPage.Verify Page Loaded
    LoginLogout.Go to Log In Page
    LoginLogout.Enter Email Address
    LoginLogout.Enter Password
    LoginLogout.Press Login Button
    LoginLogout.Login Verified
    
User logs out
    LoginLogout.Log Out

Check if user logs in with incorrect password
    LandingPage.Verify Page Loaded
    LoginLogout.Go to Log In Page
    LoginLogout.Enter Email Address
    LoginLogout.Login with incorrect password 
    LoginLogout.Press Login Button
    LoginLogout.Verify Incorrect Password
    LoginLogout.Clear Field

Checks if user can rename and export the Audiogram
    Audiogram.View Metrics Of Your Hearing In Silence
    Audiogram.Rename and Share Personalized Data
  
Checks if user can manage mimi account       
    MimiAccount.Checks if user can manage account and export JSON data  

Checks if user can Update Hearing ID
    HearingID.Update Hearing ID
    HearingID.Retake Hearing Test