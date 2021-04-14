*** Settings ***
Documentation    Locators and Properties

*** Variables ***

${BUSCAGOOGLE}       //*[@title="Pesquisar"]
${ROBOTORG}          //*[@class="LC20lb DKV0Md"]//..//*[contains(text(),'Robot Framework User Guide')]
${ROBOTPAGE}         https://robotframework.org/
${LIBRARIESLINK}     //*[@id="navigation"]/li[3]/a
${GITROBOTLINK}      //*[@href="https://github.com/robotframework/robotframework"]
${TRAVELPAGE}        https://www.hurb.com/br
${BUSCAHOTELDESTINO}    //*[@class="hrc-1Dv8O hrc-3NCDB"]
${BUSCAHOTELPESQUISAR}    //*[@class="hrc-3ekIB"]//..//*[contains(text(),'Pesquisar')]
${BUSCAHOTELORDENAPESQUISAR}    //*[@class="search_sorter"]

###TESTE ECOMMERCE
${LIXEIRACOMPRA}       //*[@class="icon-trash"]
${VALORTOTALCOMPRA}       //*[@id="total_price"]//..//*[contains(text(),'$84.55')]
${ECOMMERCEPAGE}        http://automationpractice.com/
${PESQUISACOMPRA}       //*[@class="search_query form-control ac_input"]
${BOTAOPESQUISACOMPRA}       //*[@class="btn btn-default button-search"]
${OPCAO1PESQUISACOMPRA}       //*[@id="best-sellers_block_right"]/div/ul/li[2]/div/h5/a
${OPCAO2PESQUISACOMPRA}       //*[@id="best-sellers_block_right"]/div/ul/li[3]/div/h5/a
${BOTAOADDTOCART}       //*[contains(text(),'Add to cart')]
${BOTAOPROCEED}       //*[@class="btn btn-default button button-medium"]
${BOTAOPLUS}       //*[@title="Add"]
${BOTAOCLOSEPOPUP}       //*[@title="Close window"]
${NOME_ITEM}    //*[@id="layer_cart_product_title"]
${CONTINUE_SHOPPING}    //*[@class="button-exclusive btn btn-default"]//..//*[@title="Continue shopping"]