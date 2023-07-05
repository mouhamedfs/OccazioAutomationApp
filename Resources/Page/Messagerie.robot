** Settings ***
Library           AppiumLibrary
Resource        ../../Data/Data.robot
*** Keywords ***
Inscription
    [Arguments]     ${Username}
    Wait Until Element Is Visible    id=mailbox
    Click Element    id=mailbox
    Wait Until Element Is Visible    id=cl_conv_occazio_content
    Click Element    id=cl_conv_occazio_content
    Wait Until Element Is Visible    id=bt_user_name_valid
    Click Element    id=bt_user_name_valid
    Wait Until Element Is Visible    id=et_user_name
    Input Text    id=et_user_name       ${Username}
    Click Element    id=bt_user_name_valid
    Wait Until Element Is Visible    id=cl_see_faq

Send Message
    [Arguments]     ${message}
    Inscription    ${Username}
    Wait Until Element Is Visible    id=cl_chat_send_message
    Wait Until Element Is Visible    id=ib_chat_message_send
    Tap    id=cl_chat_send_message
    Input Text    id=cl_chat_send_message    ${message}
    Wait Until Element Is Visible    id=ib_chat_message_send
    Click Element    id=ib_chat_message_send
    Wait Until Page Contains Element    ${message}

    