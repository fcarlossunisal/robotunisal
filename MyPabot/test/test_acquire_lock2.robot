*** Settings ***
Documentation      Test the function wait_for_3s of the wait.py Python script in combination with a Lock
Library            OperatingSystem
Library            pabot.PabotLib

*** Variables ***
${APPLICATION}     python3 wait.py

*** Test Cases ***
Wait For 3s
  [Documentation]  Just call the function wait_for_3s
  [Tags]           lock
  Acquire Lock                Lock On 3s
  ${rc}                       ${output} =      Run and Return RC and Output   ${APPLICATION} wait_for_3s
  Should Be Equal As Integers    ${rc}             0
  Release Lock                 Lock On 3s