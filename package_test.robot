*** Settings ***
Library    OperatingSystem

*** Variables ***
#${PACKAGES_DIR}    C:\\Users\\LMMS\\Downloads\\autodemo\\packages
${PACKAGES_DIR}    ${CURDIR}${/}packages

*** Test Cases ***

Debug Files
    Log    Current directory is: ${CURDIR}
    List Files In Directory    ${CURDIR}
	
Smoke Test - Verify Package Files Exist
    File Should Exist    ${PACKAGES_DIR}\\test-1.0.0.txt
    File Should Exist    ${PACKAGES_DIR}\\test-1.1.0.dll