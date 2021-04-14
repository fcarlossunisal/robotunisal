*** Settings ***
Library           AppiumLibrary

*** Test Cases ***
Cenario abrir a calculadora
    Open Application    http://localhost:4723/wd/hub	platformName=Android	platformVersion=8.0	 deviceName=192.168.56.102:5555	    appPackage=com.android.calculator2  	appActivity=com.android.calculator2.Calculator

tc2
    Log    hello

Teste Soma
    Open Application    http://localhost:4723/wd/hub	platformName=Android	platformVersion=8.0	 deviceName=192.168.56.102:5555	    appPackage=com.android.calculator2  	appActivity=com.android.calculator2.Calculator
    Click Element    com.android.calculator2:id/digit_8
    Click Element    com.android.calculator2:id/op_add
    Click Element    com.android.calculator2:id/digit_5
    Click Element    com.android.calculator2:id/eq
    Capture Page Screenshot
    Close Application