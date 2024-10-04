*** Settings ***
Library                     SeleniumLibrary
Library                     SikuliLibrary
Library                     AutoRecorder
Library                     OperatingSystem
Library                     String
Library                     DateTime
Library                     JSONLibrary
Library                     Process
Library                     FakerLibrary  
Library                     Collections  
Library                    ../framework/library/generator.py
Resource                   ../page_objects/sign_in_page.robot



*** Variables ***
${HOME_PAGE}      http://www.automationpractice.pl/index.php


*** Keywords ***
Abrir Browser
    Open Browser    browser=chrome    options=add_experimental_option("detach", True)
    Go To                             ${HOME_PAGE}
    Maximize Browser Window
    ${data}             Get Current Date    result_format=%d-%m-%Y
    Set Global Variable                     ${data}

Fechar Browser
    Capture Page Screenshot
    Close Browser

Create Client
    ${ClientArq}        Set Variable                Client-${data}.txt
    ${NAME}             FakerLibrary.Name
    ${EMAIL}            FakerLibrary.Email
    ${LASTNAME}         FakerLibrary.Last Name 
    ${PASSWORD}         FakerLibrary.Password
    ${Day}              FakerLibrary.Day Of Month
    ${Month}            FakerLibrary.Month
    ${Year}             FakerLibrary.Year
    ${ADDRESS}          FakerLibrary.Address
    ${COMPANY}          FakerLibrary.User Name
    ${CITY}             FakerLibrary.City
    ${CEP}              FakerLibrary.Zipcode
    ${STATE}            FakerLibrary.State
    ${PHONENUMBER}      FakerLibrary.Basic Phone Number
    ${DAY}              Convert To String            ${Day}
    ${MONTH}            Convert To String            ${Month}
    ${YEAR}             Convert To String            ${Year}
    ${ADRESS}           FakerLibrary.Address
    ${PASSWORD1}        FakerLibrary.Password
   
    &{Client}           Create Dictionary            name=${NAME}   email=${EMAIL}   lastname=${LASTNAME}   password=${PASSWORD}    day=${DAY}  month=${MONTH}  year=${YEAR}    address=${ADDRESS}    company=${COMPANY}    city=${CITY}    cep=${CEP}    state=${STATE}    phoneNumber=${PHONENUMBER}    adress=${ADRESS}    password1=${PASSWORD1}
    ${String}           Set Variable                 name=${NAME};email=${EMAIL};lastname=${LASTNAME};password=${PASSWORD};day=${DAY};month=${MONTH};year=${YEAR};address=${ADDRESS};company=${COMPANY};city=${CITY};cep=${CEP};state=${STATE};phoneNumber=${PHONENUMBER};adress=${ADRESS};password1=${PASSWORD1}
    Log    ${string}   
    Create File         ./framework/files/${ClientArq}                 ${String}
    RETURN              &{Client}

Seleciona Item Combo Box
    [Arguments]        ${ComboBox}    ${textItem}
    ${item}    Set Variable        //option[contains(.,'${textItem}')]
    SeleniumLibrary.Click Element        ${ComboBox}
    SeleniumLibrary.Click Element        ${item}
    
Uses Mass of Data
    [Arguments]     ${fileName}
    ${file}      Get File          ./framework/Files/${fileName}
    &{DICT}      Txt To Dict       ${file}
    RETURN    &{DICT}

Login in
    [Arguments]                                         ${USER}                     ${SENHA}
    SeleniumLibrary.Input Text        ${InputEmailSignIn}                        ${USER}
    SeleniumLibrary.Input Text        ${InputPasswordSignIn}                    ${SENHA}

