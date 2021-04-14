*** Settings ***
Library         ./Libraries/HashLibrary/geradorHash.py
Library         Libraries.SeleniumLibrary
Library         OperatingSystem
Library         ./Libraries/List.py
Test Teardown   Close Browser

*** Test Cases ***
Teste de conversão de string para HASH sha256
    Converter "Estou ficando muito f#$%@ em Robot Framework!!" para sha256

Teste de conversão de arquivo para HASH sha256
    Converter o arquivo "arquivo_PDF.pdf" para sha256

Teste minha SeleniumLibrary
    Abrir meu browser

Teste Lista
    List Test
    [Teardown]    NONE

*** Keywords ***
Converter "${CONTEUDO}" para sha256
    ${CONTEUDO_HASH}   Gerar Hash    ${CONTEUDO}
    Log   ${CONTEUDO_HASH}

Converter o arquivo "${FILE}" para sha256
    ${CONTEUDO_HASH}   Gerar Hash Arquivo   ./${FILE}
    Log   ${CONTEUDO_HASH}

Abrir meu browser
    My Open Browser    http://www.robotframework.org    chrome

List Test
    ${FILECONTENT}=    Get File    sample.txt
    @{list}    Convert To List From String    ${FILECONTENT}

    Log to Console    ${EMPTY}

    : FOR    ${ELEMENT}    IN    @{list}
    \    ${NAME}     Set Variable   ${ELEMENT[0]}
    \    ${CITY}     Set Variable   ${ELEMENT[1]}
    \    ${ID}       Set Variable   ${ELEMENT[2]}
    \    Log to console    Name=${NAME}, City=${CITY}, Id=${ID}