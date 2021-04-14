*** Settings ***
Documentation      Test the function wait_for_5s of the wait.py Python script
Library            OperatingSystem

*** Variables ***
${APPLICATION}     python3 wait.py

*** Test Cases ***
Wait For 5s
  [Documentation]  Just call the function wait_for_5s
  [Tags]         sequentially
  ${rc}         ${output}=      Run and Return RC and Output  ${APPLICATION} wait_for_5s
  Should Be Equal As Integers   ${rc}          0