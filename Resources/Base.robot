** Settings ***
Resource        ../Data/Data.robot
Library         AppiumLibrary
Library         OperatingSystem
Library         Process

*** Variables ***
${APPIUM_COMMAND}    appium -p 4723

*** Keywords ***
Start Appium
    ${command}    Set Variable    ${APPIUM_COMMAND}
    Run And Return Rc    ${command}
    Log To Console    ${command}


Stop Appium
    [Documentation]    Stops the running Appium server on port 4723
    Run And Return Rc     taskkill /F /IM node.exe


Occasio app
  Open Application
  ...  ${Hub}
  ...  automationName=${ANDROID_AUTOMATION_NAME}
  ...  platformName=${ANDROID_PLATFORM_NAME}  platformVersion=${ANDROID_PLATFORM_VERSION}
  ...  app=${ANDROID_APP}
  #...  noReset=true


Homepage app
  Open Application
  ...  ${Hub}
  ...  automationName=${ANDROID_AUTOMATION_NAME}
  ...  platformName=${ANDROID_PLATFORM_NAME}  platformVersion=${ANDROID_PLATFORM_VERSION}
  ...  app=${ANDROID_APP}
  ...  noReset=true


Close App
    Close Application