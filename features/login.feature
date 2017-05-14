Feature:
  Como usuário (all)
  Gostaria de fazer o login simples na aplicação
  Para acessar e alterar minhas informações de perfil
  
  Background: Começando da página de login
    Given I am on the home page
    When I click on the sign_in button
    And I visit the login page
    Then I should see Entre agora
    
  Scenario: Entrando na conta com sucesso (Happy path)
    When I have the user with email user@gmail.com and senha 123
    And I fill email input with user@gmail.com
    And I fill password input with 123
    And I click on the sign_in button
    Then I should see Logado com sucesso
    
  Scenario: Tentando logar sem email (Sad path)
    When I fill password input with 123
    And I click on the login button
    Then I should see Digite um email
    
  Scenario: Tentando logar sem senha (Sad path)
    When I fill email input with user@gmail.com
    And I click on the login button
    Then I should see Digite um email