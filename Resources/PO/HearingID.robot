*** Settings ***
Documentation  General keywords that are specific to Apps functionality
Library  AppiumLibrary
 
*** Keywords ***
Update Hearing ID
    [Documentation]  Navigating to the Keep your Hearing ID up-to-date frame layout
    AppiumLibrary.Wait Until Page Contains Element  //android.widget.TextView[@resource-id='io.mimi.ht:id/_title' and @text='Keep your Hearing ID up-to-date']
    ##swipe by percent    50     99     50    10  1280
    AppiumLibrary.Wait Until Page Contains Element  ${TEST_YOUR_EARS_AGAIN} 
    

Retake Hearing Test
    [Documentation]  Test your ears again
    Click Element    ${TEST_YOUR_EARS_AGAIN}
    AppiumLibrary.Wait Until Page Contains Element  //android.widget.TextView[@resource-id='io.mimi.ht:id/titleTextView' and @text='Find a quiet place']
    Click Element   //android.widget.Button[@resource-id='io.mimi.ht:id/buttonNext' and @text='OK']
    AppiumLibrary.Wait Until Page Contains Element  //android.widget.TextView[@resource-id='io.mimi.ht:id/titleTextView' and @text='Connect your headphones to your device']
    Click Element    //android.widget.ImageButton
    AppiumLibrary.Wait Until Page Contains Element  //android.widget.TextView[@resource-id='io.mimi.ht:id/titleTextView' and @text='Find a quiet place']
    Click Element    //android.widget.ImageButton