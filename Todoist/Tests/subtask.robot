*** Settings ***
Documentation               Create new task with date
Library                     Selenium2Library

*** Test cases ***
User can login and create new subtask on task
    Open browser                https://todoist.com/users/showlogin          chrome
    Input text                  name=email                                   ttrvuf0@lywenw.com
    Input text                  name=password                                Aj#%R*g54%u$x=Y
    Click Element               class=submit_btn
    Sleep                       5
    Click Element               xpath=//li[@id='filter_inbox']/span[2]
    Click Element               xpath=//li/div/div[2]/div
    Click Element               xpath=//div[3]/div[2]/div/div/div/button
    Input text                  xpath=//form/div/div/div/div/div            New Subtask
    Click Element               xpath=//button[@type='submit']
    Close Browser
*** Keywords ***
Provided precondition
    Setup system under test