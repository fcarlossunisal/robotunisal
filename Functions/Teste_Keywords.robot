*** Settings ***
Documentation    ALL functions (Keywords)
Library    SeleniumLibrary
Library    Collections
Resource    ../PageObjects/Teste_PageObjects.robot
Resource    ../PageObjects/Teste_InputData.robot

*** Variables ***
${LOOP_CLICK}    0

*** Keywords ***
Login Google
#    Open Browser    ${GOOGLEURL}    ${BROWSER}    options=add_argument("--incognito")
    Open Browser   ${GOOGLEURL}   ${BROWSER}   remote_url=http://192.168.1.13:4444/wd/hub
    Maximize Browser Window
#   Go To         ${GOOGLEURL}

Busca Google
    Input Text    ${BUSCAGOOGLE}    ${BUSCAGOOGLEVALUE1}
    Press Keys    ${BUSCAGOOGLE}    RETURN
    Wait Until Page Contains Element    ${ROBOTORG}    timeout=60.0
#    Click Element    ${ROBOTORG}
    Capture Page Screenshot

Login RobotOrg
    Open Browser    ${ROBOTPAGE}    ${BROWSER}    options=add_argument("--incognito")
    Maximize Browser Window

BuiltinView
    Click Element    ${LIBRARIESLINK}
    Go To            ${BUILTINURL}
    Wait Until Page Contains Element    ${GITROBOTLINK}    timeout=60.0
    Capture Page Screenshot

Login Travel
    Open Browser    ${TRAVELPAGE}    ${BROWSER}    options=add_argument("--incognito")
    Maximize Browser Window
    Go To         ${TRAVELPAGE}

Escolhe Hotel
    Input Text    ${BUSCAHOTELDESTINO}    ${BUSCAHOTELDESTINOVALUE}
#    Press Keys    ${BUSCAHOTELDESTINO}    RETURN
    Click Element    ${BUSCAHOTELPESQUISAR}
    Wait Until Page Contains Element    ${BUSCAHOTELORDENAPESQUISAR}    timeout=60.0
    sleep    1
    Capture Page Screenshot

Login e-commerce
    Open Browser    ${ECOMMERCEPAGE}    ${BROWSER}    options=add_argument("--incognito")
#    Open Browser    ${ECOMMERCEPAGE}    headlesschrome
    Maximize Browser Window

Cria Lista de Compra
    @{LISTA_COMPRA}    Create List
    Set Global Variable         ${LISTA_COMPRA}

Add to Cart 1
   Wait Until Page Contains Element    ${PESQUISACOMPRA}    timeout=60.0
   Input Text    ${PESQUISACOMPRA}    ${VALOR1PESQUISACOMPRA}
   Click Element    ${BOTAOPESQUISACOMPRA}
   Wait Until Page Contains Element    ${OPCAO1PESQUISACOMPRA}    timeout=60.0
   Click Element    ${OPCAO1PESQUISACOMPRA}
   Wait Until Page Contains Element    ${BOTAOADDTOCART}    timeout=60.0
   Click Element    ${BOTAOADDTOCART}
   Wait Until Page Contains Element    ${BOTAOCLOSEPOPUP}    timeout=60.0
   sleep    5
   ${NOME_ITEM_VALUE1}    Get Text    ${NOME_ITEM}
   Insert Into List    ${LISTA_COMPRA}    0    ${NOME_ITEM_VALUE1}
   Click Element    ${BOTAOPROCEED}
   Wait Until Page Contains Element    ${BOTAOPLUS}    timeout=60.0
   FOR       ${LOOP_CLICK}      IN RANGE     4
          Click Element    ${BOTAOPLUS}
   END
   Verifica Saldo
   log    ${LISTA_COMPRA}

Add to Cart 2
   Wait Until Page Contains Element    ${CONTINUE_SHOPPING}    timeout=60.0
   Click Element    ${CONTINUE_SHOPPING}
   Wait Until Page Contains Element    ${PESQUISACOMPRA}    timeout=60.0
   Input Text    ${PESQUISACOMPRA}    ${VALOR2PESQUISACOMPRA}
   Click Element    ${BOTAOPESQUISACOMPRA}
   Wait Until Page Contains Element    ${OPCAO2PESQUISACOMPRA}    timeout=60.0
   Click Element    ${OPCAO2PESQUISACOMPRA}
   Wait Until Page Contains Element    ${BOTAOADDTOCART}    timeout=60.0
   Click Element    ${BOTAOADDTOCART}
   Wait Until Page Contains Element    ${BOTAOCLOSEPOPUP}    timeout=60.0
   sleep    5
   ${NOME_ITEM_VALUE2}    Get Text    ${NOME_ITEM}
   Insert Into List    ${LISTA_COMPRA}    1    ${NOME_ITEM_VALUE2}
   Click Element    ${BOTAOPROCEED}
   Wait Until Page Contains Element    ${BOTAOPLUS}    timeout=60.0
   FOR       ${LOOP_CLICK}      IN RANGE     4
          Click Element    ${BOTAOPLUS}
   END
   Verifica Saldo
   log    ${LISTA_COMPRA}

Verifica Saldo
    ${VERIFICAVALORTOTAL}=    Run Keyword And Return Status   Verifica Valor Total da Compra
    Run Keyword If  '${VERIFICAVALORTOTAL}'=='True'    Run Keywords
    ...    Capture Page Screenshot
    ...    AND   Log To Console     Saldo Suficiente!
    ...    ELSE    Run Keywords     Capture Page Screenshot    AND   Log To Console     Saldo Insuficiente!

Verifica Valor Total da Compra
    Wait Until Page Contains Element    ${LIXEIRACOMPRA}    timeout=60.0
    Page Should Contain Element      ${VALORTOTALCOMPRA}