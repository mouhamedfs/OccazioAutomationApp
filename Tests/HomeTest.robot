** Settings ***
Resource        ../Data/Data.robot
Resource        ../Resources/Page/Navigate.robot
Resource        ../Resources/Page/Messagerie.robot
Resource        ../Resources/Base.robot

*** Test Cases ***
Demarrage
  [Tags]        tests12
  Navigate.Unboarding
  #Messagerie.Inscription    ${Username}
  