*** Settings ***
Documentation               Create new comment
Library                     Selenium2Library

*** Test cases ***
User can login and create comment on task
    Open browser                https://todoist.com/users/showlogin          chrome
    Input text                  name=email                                   ttrvuf0@lywenw.com
    Input text                  name=password                                Aj#%R*g54%u$x=Y
    Click Element               class=submit_btn
    Sleep                       5
    Click Element               xpath=//li[@id='filter_inbox']/span[2]
    Click Element               xpath=//li/div/div[2]/div
    Click Element               xpath=//button[@id='tabs-8-tab-comments']
    Input text                  xpath=//textarea                            New comment
    Click Element               xpath=//div[2]/div/div[2]/div[2]/button
    Close Browser
