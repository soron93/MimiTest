*** Settings ***
Documentation  General keywords that are specific to Apps landing page.
Library  AppiumLibrary
 
*** Variables *** 
${START_PAGE}   //android.widget.TextView[@resource-id="io.mimi.ht:id/alreadyHaveTv" and @text="Log in with Mimi"]

*** Keywords ***
Verify Page Loaded
    AppiumLibrary.Wait Until Page Contains Element  ${START_PAGE}       