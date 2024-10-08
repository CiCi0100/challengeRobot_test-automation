*** Settings ***
Library            SeleniumLibrary
Resource           ../framework/functionals.robot
Resource           ../page_objects/home_page.robot
Resource           ../page_objects/contact_us.robot
Resource           ../page_objects/create_account.robot
Resource           ../page_objects/my_account.robot
Resource           ../page_objects/create_account.robot
Resource           ../page_objects/search_page.robot
Resource           ../page_objects/sign_in_page.robot


*** Keywords ***
Given that I'm on the home page, and I'm not logged in
    Go To                             ${HOME_PAGE}
    Maximize Browser Window

When I click on “Sign In”
    Click Element                     ${SignIn}

And I am redirected to the login and registration page
    Wait Until Element Is Visible    ${PageTitle}

And I enter your data correctly
    &{DATA}                           Create Client                  
    Set Global Variable               &{DATA}
    SeleniumLibrary.Input Text        ${InputCreate}                            ${DATA.email}
    Click Element                     ${CreateAccount}
    Wait Until Element Is Visible     ${h3Your personalInformation}
    Click Element                     ${gender}
    SeleniumLibrary.Input Text        ${inputName}                             ${DATA.name}
    SeleniumLibrary.Input Text        ${inputLastName}                         ${DATA.lastname}
    SeleniumLibrary.Input Text        ${inputPassword}                         ${DATA.password}
    Select From List By Index         ${SelectDay}                              ${DATA.day}
    Select From List By Index         ${SelectMonths}                           ${DATA.month}
    Select From List By Value         ${SelectYears}                            ${DATA.year}

 Then When you click on the finish button, the registration must be completed successfully.
     Click Element                    ${ButtonRegister}
     Wait Until Element Is Visible    ${SignOut}
     Click Element    ${SignOut}

And I enter your email and password correctly
    &{USER}      Uses Mass of Data    Client-${data}.txt
    Set Global Variable                     &{USER}
    ${usuario}    Set Variable              ${USER.email}
    ${senha}      Set Variable              ${USER.password}
    Set Global Variable                     ${usuario}
    Set Global Variable                     ${senha}  
    Login in    ${usuario}    ${senha}
Then When you click on the “Sign In” button, you must log in successfully.
    Click Element                    ${ButtonSignIn}

Given I'm on the home page logged in
    Given that I'm on the home page, and I'm not logged in
    When I click on “Sign In”
    And I am redirected to the login and registration page
    And I enter your email and password correctly
    Then When you click on the “Sign In” button, you must log in successfully.
    Wait Until Element Is Visible    //span[contains(.,'${USER.name} ${USER.lastname}')]

When I click on the search field “Search”
    Click Element                   ${InputSearch}

And I enter the name of the product I am looking for
    SeleniumLibrary.Input Text      ${InputSearch}                               ${PRODUCT}

 And click on the “submit search” button
     Click Element                  ${ButtonSearch}

Then The system should show me what I searched for
    Page Should Contain Element    ${ProductVerification}

When I click on “Contact us”
    Click Element                  ${ContactUs}

And fill in the mandatory fields
    SeleniumLibrary.Input Text     ${InputMessenge}                                ${Messenge}
    Scroll Element Into View       ${buttonSend}
    Seleciona Item Combo Box       ${CbSubjectHeading}    Customer service

And click on the “Send” button
    Click Element                  ${buttonSend}

Then My messenger should be sent, and the page should be reloaded.
    Page Should Contain            ${messageSendingConfirmation}
When I click on my name
    Click Element                 //span[contains(.,'${USER.name} ${USER.lastname}')]

And I fill in all my address details
    SeleniumLibrary.Input Text    ${inputCompany}                ${USER.company}
    SeleniumLibrary.Input Text    ${inputAddress}                ${USER.address}
    SeleniumLibrary.Input Text    ${inputCity}                   ${USER.city}
    Select From List By Label     ${selectState}                 ${USER.state}
    SeleniumLibrary.Input Text    ${inputPostCode}               ${USER.cep}
    SeleniumLibrary.Input Text    ${inputHomePhone}              ${USER.phoneNumber}
    SeleniumLibrary.Input Text    ${additionalInformation}       ${Messenge}

Then When clicking the “Save” button, my address should be saved successfully.
    Click Element    ${buttonSaveAddress}
    Wait Until Element Is Visible    ${textAddAddress}

And I change my address
    Click Element    ${updateAddress}
    SeleniumLibrary.Input Text    ${inputAddress}                ${USER.adress}

Then When clicking the “Save” button, my address should be updated successfully.
    Wait Until Element Is Visible    ${textAddAddress}

And I change my password
    SeleniumLibrary.Input Text    ${currentPassword}    ${USER.password}
    SeleniumLibrary.Input Text    ${newPassword}    ${USER.password1}
    SeleniumLibrary.Input Text    ${confirmationPassword}    ${USER.password1}

Then When clicking the “Save” button, my password should be updated successfully.
    Click Element    ${buttonSavePersonalInformation}

And I click on the “${menu}” menu
    Click Element    //span[contains(.,'${menu}')]

