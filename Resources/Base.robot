** Settings ***
Resource        ../Data/Data.robot
Resource        ../Tests/Parrallell/devices1.txt
Resource        ../Tests/Parrallell/devices2.txt
Library         AppiumLibrary
Library         OperatingSystem

*** Variables ***
${APPIUM_COMMAND}    appium -p 4723
${os_version}
${deviceName}
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

Open Devices

      Open Application
  ...  http://mouhamedfamarasa_rmROKy:icEUU7Qmtw7dh7dRsY4b@hub-cloud.browserstack.com/wd/hub
  ...  name=parallel_test
  ...  build=RobotFramework
  ...  platformName=Android
  ...  os_version=${os_version}
  ...  app=bs://a184dfcad99aa72e97a7144e92719192a8a2d953
  ...  deviceName=${deviceName}


Homepage app
  Open Application
  ...  ${Hub}
  ...  automationName=${ANDROID_AUTOMATION_NAME}
  ...  platformName=${ANDROID_PLATFORM_NAME}  platformVersion=${ANDROID_PLATFORM_VERSION}
  ...  app=${ANDROID_APP}
  ...  noReset=true


Close App
    Close Application