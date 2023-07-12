** Settings ***
Resource        ../Data/Data.robot
Resource        ../Resources/Page/Navigate.robot
Resource        ../Resources/Page/Messagerie.robot
Resource        ../Resources/Page/Acheteur/HomeBuyer.robot
Resource        ../Resources/Base.robot

*** Test Cases ***
Demarrage
  [Tags]        firststep
  Navigate.Unboarding
  Navigate.Switch between Mode      ${choix}
  Messagerie.Send Message    ${message}
  Navigate.Switch between Mode      Mode Acheteur

Mode Vendeur Implementation
   [Tags]        regression
   HomeBuyer.Search for an specific registration number