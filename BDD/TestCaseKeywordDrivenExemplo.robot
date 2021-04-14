*** Settings ***
Resource        ../Resource/Resource.robot
Suite Setup     Acessar blog robotizandotestes
Suite Teardown  Fechar Navegador
Test Template   Validar pesquisa de postagens

*** Test Case ***
#Pesquisar Post Premiere            introdução     Season Premiere: Introdução ao Robot Framework
#Pesquisar Post Editores Ep.01      visual code    Season Editores - Ep. 02: Visual Studio Code
#Pesquisar Post Tutoriais Ep.01     windows        Season Tutoriais - Ep. 01: Instalando o Robot Framework (Windows)
Pesquisar Post Premiere            introdução     Season Running - Ep. 08: Executando seus testes no Docker
Pesquisar Post Editores Ep.01      visual code    Season Editores - Ep. 02: Visual Studio Code - Configurando o VS Code para o Robot Framework
#Pesquisar Post Tutoriais Ep.01     windows        Season Mobile com Appium - Ep.03: Robotizando o app do Youtube com Appium

*** Keyword ***
Validar pesquisa de postagens
    [Arguments]     ${BUSCA}        ${TITULO_POSTAGEM}
    Pesquisar a postagem pela palavra "${BUSCA}"
    Verificar resultado da pesquisa   ${TITULO_POSTAGEM}
    Clicar no post encontrado
    Verificar tela da postagem        ${TITULO_POSTAGEM}