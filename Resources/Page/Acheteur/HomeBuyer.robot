** Settings ***
Library           AppiumLibrary
Library           String
Resource          ../../../Data/Data.robot
Resource          ../Navigate.robot

*** Keywords ***
Search for an specific registration number
    Navigate.Unboarding
    Wait Until Page Contains Element    id=include_buyer_no_data
    Click Element    id=include_buyer_no_data
    Wait Until Page Contains Element    id=tv_buyer_bubble_text
    Wait Until Page Contains Element    id=et_edit_plate
    Click Element    id=et_edit_plate
    @{fileData} =    Split String To Characters   ${matriculeBuyer}
    FOR    ${line}    IN    @{fileData}
           Input Text      id=et_edit_plate      ${line}
    END
    Sleep    15