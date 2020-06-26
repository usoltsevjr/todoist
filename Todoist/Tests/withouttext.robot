*** Settings ***
Documentation               Create new task without text
Library                     Selenium2Library

*** Test cases ***
User can login and create task without text
    Open browser                https://todoist.com/users/showlogin          chrome
    Input text                  name=email                                   ttrvuf0@lywenw.com
    Input text                  name=password                                Aj#%R*g54%u$x=Y
    Click Element               class=submit_btn
    Sleep                       5
    Click Element               class=plus_add_button
    Click Element               class=ist_button_red
    Close Browser
*** Keywords ***
Provided precondition
    Setup system under test