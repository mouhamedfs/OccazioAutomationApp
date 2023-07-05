** Settings ***
Resource        ../Data/Data.robot
Resource        ../Resources/Page/Navigate.robot
Resource        ../Resources/Page/Messagerie.robot
Resource        ../Resources/Base.robot

*** Test Cases ***
Demarrage
  [Tags]        firststep
  Navigate.Unboarding
  Messagerie.Send Message    ${message}