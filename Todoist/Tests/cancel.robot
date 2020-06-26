*** Settings ***
Documentation               Create new task & cancel
Library                     Selenium2Library

*** Test cases ***
User can login and create task & cancel
    Open browser                https://todoist.com/users/showlogin          chrome
    Input text                  name=email                                   ttrvuf0@lywenw.com
    Input text                  name=password                                Aj#%R*g54%u$x=Y
    Click Element               class=submit_btn
    Sleep                       5
    Click Element               class=plus_add_button
    Input text                  class=notranslate                             New task
    Click Element               class=item_editor_assign_due--has_date
    Click Element               xpath=//button[contains(.,'+ Добавить время')]
    Input text                  xpath=//div[2]/input                          14:00
    Click Element               xpath=(//button[@type='submit'])[2]
    Click Element               xpath=//button[2]/div[2]
    Click Element               xpath=//form/div[2]/button[2]
    Close Browser

*** Keywords ***
Provided precondition
    Setup system under test