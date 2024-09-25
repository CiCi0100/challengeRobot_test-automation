*** Settings ***
Test Setup        Abrir Browser
Test Teardown     Fechar Browser
Resource           ../steps/tests_steps.robot


*** Test Cases ***
CT001 - Successfully register user
    [Documentation]    Testa o login com credenciais válidas
    Given that I'm on the home page, and I'm not logged in
    When I click on “Sign In”
    And I am redirected to the login and registration page
    And I enter your data correctly
    Then When you click on the finish button, the registration must be completed successfully.

CT002 - Login successfully
    Given that I'm on the home page, and I'm not logged in
    When I click on “Sign In”
    And I am redirected to the login and registration page
    And I enter your email and password correctly
    Then When you click on the “Sign In” button, you must log in successfully.

CT003 - Successfully search for a product
    Given I'm on the home page logged in
    When I click on the search field “Search”
    And I enter the name of the product I am looking for
    And click on the “submit search” button
    Then The system should show me what I searched for

CT004 - make a complaint by contacting us
    Given I'm on the home page logged in
    When I click on “Contact us”
    And fill in the mandatory fields
    And click on the “Send” button
    Then My messenger should be sent, and the page should be reloaded.

CT005 - Successfully register my address
    Given I'm on the home page logged in
    When I click on my name
    And I click on the “Add my first address” menu
    And I fill in all my address details
    Then When clicking the “Save” button, my address should be saved successfully.

CT006 - Change my address successfully
    Given I'm on the home page logged in
    When I click on my name
    And I click on the “My addresses” menu
    And I change my address
    Then When clicking the “Save” button, my address should be updated successfully.

CT007 - successfully change my personal details
    Given I'm on the home page logged in
    When I click on my name
    And I click on the “My personal information” menu
    And I change my password
    Then When clicking the “Save” button, my password should be updated successfully.

    