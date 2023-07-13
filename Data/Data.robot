*** Variables ***
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_APP}                ${CURDIR}/App/Android/occazio.apk
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_PLATFORM_VERSION}   %{ANDROID_PLATFORM_VERSION=11}
${Hub}          http://127.0.0.1:${AppiumPort}/wd/hub
${AppiumPort}    4723
${Username}     mouhamedfsane
${message}      This is a test message
${choix}        Mode Vendeur
${matriculeBuyer}       AA-123-AA