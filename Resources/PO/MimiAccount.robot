*** Settings ***

Library  AppiumLibrary


*** Keywords ***
Checks if user can manage account and export JSON data
    [Tags]  Smoke
    swipe by percent    50     99     50    10  2000
    AppiumLibrary.Wait Until Page Contains Element  //android.widget.TextView[@resource-id='io.mimi.ht:id/_title' and @text='Your Mimi account']
    AppiumLibrary.Wait Until Page Contains Element  //android.widget.Button[@resource-id='io.mimi.ht:id/manageAccountBtn' and @text='Manage account']
    Click Element   //android.widget.Button[@resource-id='io.mimi.ht:id/manageAccountBtn' and @text='Manage account']
    swipe by percent    50     99     50    10  1280
    AppiumLibrary.Wait Until Page Contains Element  //android.widget.Button[@text='Manage my account']      
    Click Element   //android.widget.Button[@text='Manage my account']
    AppiumLibrary.Wait Until Page Contains Element  //android.view.View[@text='Export all my data']
    Click Element   //android.view.View[@text='Export all my data']
    AppiumLibrary.Wait Until Page Contains Element  //android.widget.Button[@text='Export']
    Click Element   //android.widget.Button[@text='Export']
    AppiumLibrary.Wait Until Page Contains Element  //android.view.View[@resource-id='data-export--title' and 'Export all my data']
    Go Back
    Go Back