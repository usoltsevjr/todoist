*** settings ***
Documentation               Create new project 3 times
Library                     Selenium2Library

*** test cases ***
User can login and create new project 3 times
    open browser                https://todoist.com/users/showlogin          chrome
    Input text                  name=email                                   ttrvuf0@lywenw.com
    Input text                  name=password                                Aj#%R*g54%u$x=Y
    Click Element               class=submit_btn
    Sleep                       2
    Click Element               css=.action svg
    Input text                  id=edit_project_modal_field_name          New Project
    Click Button                class=ist_button_red
    Close Browser
*** keywords ***
