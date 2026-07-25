*** Settings ***
Library    OperatingSystem

*** Variables ***
#${PACKAGES_DIR}    C:\\Users\\LMMS\\Downloads\\autodemo\\packages
${PACKAGES_DIR}    ${CURDIR}${/}packages

*** Test Cases ***
	
Smoke Test - Verify package files exist
    File Should Exist    ${PACKAGES_DIR}\\test-1.0.0.txt
    File Should Exist    ${PACKAGES_DIR}\\test-1.1.0.dll

Smoke Test - Verify that there are no extra files in the pack
	@{files}=    List Files In Directory    ${PACKAGES_DIR}
    Length Should Be    ${files}    2