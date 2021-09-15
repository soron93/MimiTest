*** Settings ***
Documentation  General keywords that are specific to Apps functionality
Library  AppiumLibrary
 

*** Keywords ***
View Metrics Of Your Hearing In Silence
    [Documentation]  View Audiogram results from a silent hearing test
    AppiumLibrary.Wait Until Page Contains Element  //android.widget.TextView[@resource-id='io.mimi.ht:id/pttEnvironmentResultTv' and @text='Silence']    
    Click Element   //android.widget.TextView[@resource-id='io.mimi.ht:id/_title' and @text='Your hearing in silence']
    AppiumLibrary.Wait Until Page Contains Element  id=io.mimi.ht:id/audiogramTitleTv

Rename and Share Personalized Data
    [Documentation]  Prompts naming of the personal audiogram data with sharing capabilities
    AppiumLibrary.Wait Until Page Contains Element  //android.widget.ImageView[@resource-id='io.mimi.ht:id/actionExport']
    Click Element   id=io.mimi.ht:id/actionExport
    AppiumLibrary.Wait Until Page Contains Element  io.mimi.ht:id/titleTV
    Input Text  id=io.mimi.ht:id/name   ${NAME_HEARING_TEST}
    Click Element    id=io.mimi.ht:id/nextBtn
    AppiumLibrary.Wait Until Page Contains Element  //android.widget.TextView[@resource-id='android:id/title']
    swipe by percent    50     10     50    10  2000
    AppiumLibrary.Wait Until Page Contains Element  //android.widget.TextView[@resource-id='io.mimi.ht:id/audiogramTitleTv' and @text='Audiogram']
    Click Element   id=io.mimi.ht:id/closeBtn
    AppiumLibrary.Wait Until Page Contains Element  //android.widget.TextView[@resource-id='io.mimi.ht:id/_title']
    