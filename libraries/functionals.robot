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


*** Keywords ***
Create Client
    ${CurrentDate}      Get Current Date            result_format=%d-%m-%Y
    ${ClientArq}        Set Variable                Cliente-${CurrentDate}.txt
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
    ${String}           Set Variable                 name=${NAME}, email=${EMAIL}, lastname=${LASTNAME}, password=${PASSWORD}, day=${DAY}, month=${MONTH}, year=${YEAR}, address=${ADDRESS}, company=${COMPANY}, city=${CITY}, cep=${CEP}, state=${STATE}, phoneNumber=${PHONENUMBER}, adress=${ADRESS}, password1=${PASSWORD1}
    Log    ${string}   
    Create File         ./files/${ClientArq}                 ${String}
    RETURN              &{Client}

Seleciona Item Combo Box
    [Arguments]        ${ComboBox}    ${textItem}
    ${item}    Set Variable        //option[contains(.,'${textItem}')]
    SeleniumLibrary.Click Element        ${ComboBox}
    SeleniumLibrary.Click Element        ${item}
    
    