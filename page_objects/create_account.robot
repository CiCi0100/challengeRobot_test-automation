*** Variables ***
${h3Your personalInformation}      xpath= //h3[@class='page-subheading'][contains(.,'Your personal information')]
${gender}                            xpath= //input[@type='radio'][contains(@id,'gender1')]
${inputName}                        xpath= //input[@type='text'][contains(@id,'firstname')]
${inputLastName}                    xpath= //input[@type='text'][contains(@id,'lastname')]
${inputPassword}                    xpath= //input[contains(@type,'password')]
${SelectDay}                         xpath= //select[contains(@name,'days')]
${SelectMonths}                      xpath= //select[contains(@name,'months')]
${SelectYears}                       xpath= //select[@name='years']
${ButtonRegister}                    xpath= //span[contains(.,'Register')]

