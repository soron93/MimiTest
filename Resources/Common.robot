*** Settings ***
Documentation  General keywords that are specific to Apps functionality.
Library  AppiumLibrary

*** Keywords ***
Begin App Test
    [Documentation]  Mimi hearing test is launched
    Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=emulator-5554     appPackage=io.mimi.ht    appActivity=io.mimi.ht.SplashScreenActivity    automationName=Uiautomator2

End App Test
    [Documentation]  Ends test
    Close Application