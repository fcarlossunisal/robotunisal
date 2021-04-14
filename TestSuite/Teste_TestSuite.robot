*** Settings ***
Documentation    Test Suite
Resource    ../Functions/Teste_Keywords.robot
Test Teardown    Run Keywords    Close Browser

*** Test Cases ***
Test title 1
    [Tags]    Teste1
    Login Google
    Busca Google
#    [Teardown]    Close Browser

Test Builtin Library
    [Tags]    Teste2
    Login RobotOrg
    BuiltinView
#    [Teardown]    Close Browser

Test Agenda Viagem
    [Tags]    Teste3
    Login Travel
    Escolhe Hotel

Test Ecommerce
    [Tags]    Teste4
    Login e-commerce
    Cria Lista de Compra

Test Ecommerce Lista de Compra
    [Tags]    Teste5
    Login e-commerce
    Cria Lista de Compra
    Add to Cart 1
    Add to Cart 2