*** Variables ***
${PRODUCT}        DRESSES
${ProductVerification}                 xpath= //span[@class='lighter'][contains(.,'"${PRODUCT}"')]
${InputSearch}                          xpath= //input[@class='search_query form-control ac_input'][contains(@id,'top')]
${ButtonSearch}                         xpath= //button[@type='submit'][contains(.,'Search')]

