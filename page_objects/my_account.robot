*** Variables ***
${inputPostCode}                        xpath= //input[contains(@name,'postcode')]
${inputCompany}                         xpath= //input[contains(@class,'form-control validate')]
${inputAddress}                         xpath= //input[contains(@name,'address1')]
${inputCity}                            xpath= //input[contains(@name,'city')]
${selectState}                          xpath= //select[@name='id_state'][contains(@id,'state')]
${inputHomePhone}                       xpath= //input[@name='phone']
${inputMobilePhone}                     xpath= //input[@class='validate form-control'][contains(@id,'mobile')]
${additionalInformation}                xpath= //textarea[contains(@class,'validate form-control')]
${buttonSaveAddress}                    xpath= //button[@id='submitAddress']
${textAddAddress}                       xpath= //strong[contains(.,'Your addresses are listed below.')]

${updateAddress}                        xpath= //span[contains(.,'Update')]
${currentPassword}                      xpath= //input[contains(@name,'old_passwd')]
${newPassword}                          xpath= //input[@name='passwd']
${confirmationPassword}                 xpath= //input[contains(@name,'confirmation')]
${addNewAddress}                        xpath= //span[contains(.,'Add a new address')]
${buttonSavePersonalInformation}        xpath= //button[@name='submitIdentity']

