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
    Input Text      id=et_edit_plate      ${matriculeBuyer}
    Verifications Annonce
    Equipements types



Verifications Annonce
   Wait Until Page Contains Element    id=tv_advert_detail_price
   Wait Until Page Contains Element    id=tv_advert_description_finish
   Wait Until Page Contains Element    id=tv_car_info_detail_mileage
   Wait Until Page Contains Element    id=tv_car_info_detail_energy
   Wait Until Page Contains Element    id=tv_car_info_detail_year
   Wait Until Page Contains Element    id=tv_car_info_detail_gearbox

Equipements types
    Wait Until Page Contains Element    id=bt_advert_description_facilities
    Click Element    id=bt_advert_description_facilities
    Wait Until Page Contains Element    id=tv_facilities_title
