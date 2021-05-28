*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
"${I}" Should See Items That Match With The Entered Term: "${term}"
    ${products} =    Get WebElements    css:ul[class=product_list] a[class=product-name]
    FOR    ${product}    IN    @{products}
        Element Should Contain    ${product}    ${term}
    END
