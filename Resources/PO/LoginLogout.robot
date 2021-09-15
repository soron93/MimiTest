*** Settings ***

Library  AppiumLibrary


*** Keywords ***
Go to Log In Page
    [Documentation]  User is directed to landing page
    AppiumLibrary.Wait Until Page Contains Element  ${LOGIN-IN-WITH-MIMI} 
    Click Element   ${LOGIN-IN-WITH-MIMI} 

Enter Email Address
    [Documentation]  Enter user name
    AppiumLibrary.Wait Until Page Contains Element  ${ENTER_EMAIL}
    Input Text  ${ENTER_EMAIL}  ${USERNAME}
  
Enter Password
    [Documentation]  Enter password 
    Input Password  ${ENTER_PASSWORD}   ${PASSWORD}

Press Login Button
    Click Element    ${LOGIN_BUTTON}    

Login Verified
    AppiumLibrary.Wait Until Page Contains Element  //android.widget.TextView[@resource-id='io.mimi.ht:id/pttEnvironmentResultTv' and @text='Silence']    

Log Out
    #AppiumLibrary.Wait Until Page Contains Element  //android.widget.TextView[@resource-id='io.mimi.ht:id/_title']
    Swipe By Percent    50     99     50    10  1280
    AppiumLibrary.Wait Until Page Contains Element  id=io.mimi.ht:id/logOutBtn
    Click Element   id=io.mimi.ht:id/logOutBtn 
    AppiumLibrary.Wait Until Page Contains Element  //android.widget.TextView[@resource-id='android:id/message' and @text='This will disable your Hearing ID.']
    Click Element   id=android:id/button1

Login with incorrect password 
    Input Password  ${ENTER_PASSWORD}   ${INCORRECT_PASSWORD}

Verify Incorrect Password   
    AppiumLibrary.Wait Until Page Contains Element  //android.widget.TextView[@resource-id='io.mimi.ht:id/headerErrorTv' and @text='Your email or password is incorrect.']

Clear Field    
    Clear Text  ${ENTER_PASSWORD}
    Go Back

