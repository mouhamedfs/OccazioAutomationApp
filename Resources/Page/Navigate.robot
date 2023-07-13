** Settings ***
Library           AppiumLibrary

*** Keywords ***
Unboarding
    Wait Until Element Is Visible       id=fr.dsquad.occazio:id/bt_start_showcase   30s
    Click Element    id=bt_start_showcase
    Wait Until Element Is Visible    id=indicator_showcase
    ${buttons}=    Run Keyword And Return Status    Page Should Not Contain Element    id=bt_stop_showcase
    FOR    ${index}  IN RANGE    4
           Run Keyword If    ${buttons}    Swipe By Percent    90    50    10    50    200
           ...               ELSE             Exit For Loop
    END
    Click Element    id=v_seekbar_overlay
    Click Element    id=bt_stop_showcase
    Wait Until Element Is Visible    id=tv_why_user_title
    Wait Until Element Is Visible    id=v_click_why_other
    Click Element    id=v_click_why_other

Switch between Mode
   [Arguments]         ${choix}
   IF    '${choix}' == 'Mode Acheteur'
      Mode Acheteur
   ELSE
      Mode Vendeur
   END

Mode Acheteur
    Click Element                    id=bt_switch_mode
    Wait Until Element Is Visible    id=tv_mode_buyer


Mode Vendeur
    Click Element                    id=bt_switch_mode
    Wait Until Element Is Visible    id=tv_mode_seller