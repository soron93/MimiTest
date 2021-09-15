*** Settings ***
Documentation  General keywords that are specific to Apps functionality
Library  AppiumLibrary
 

*** Keywords ***
Verify Page Loaded
    AppiumLibrary.Wait Until Page Contains Element  ${START_PAGE}       