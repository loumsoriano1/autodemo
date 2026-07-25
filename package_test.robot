*** Settings ***
Library    OperatingSystem

*** Variables ***
${PACKAGES_DIR}    C:\\Users\\lsoriano\\Documents\\autodemo\\packages

*** Test Cases ***
Smoke Test - Verify Package Files Exist
    File Should Exist    ${PACKAGES_DIR}\\test-1.0.0.txt
    File Should Exist    ${PACKAGES_DIR}\\test-1.1.0.dll