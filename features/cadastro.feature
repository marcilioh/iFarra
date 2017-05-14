Feature: sign_up
  Como usuário (all)
  Gostaria de criar uma conta com minhas informações
  Para acessar as funcionalidades da aplicação iFarra
  
  Background: Começando da página de criação de conta
    Given I am on the home page
    When I click on the sign_in page
    Then I should see Crie uma conta
  
  Scenario Outline: Usuario criado com sucesso (Happy path)
    When I fill email input with <email>
    And I fill password input with <password>
    And I fill password_confirmation input with <password>
    And I click on the criar_conta button
    Then I should see Usuario criado com sucesso
    
    Examples:
      | email | password |
      | user@gmail.com | 123 |
      | pmmc@gmail.com | 1233 |
  
  Scenario: Tentativa de criar usuario sem email (Sad path)
    When I fill password input with 123
    And I fill password_confirmation input with 123
    And I click on the criar_conta button
    Then I should see É preciso fornecer um email
    
  Scenario: Tentativa de criar usuario sem senha (Sad path)
    When I fill email input with user@gmail.com
    And I click on the criar_conta button
    Then I should see É preciso fornecer uma senha
    
  Scenario: Tentativa de criar usuario com senha diferente da confirmação de senha (Sad path)
    When I fill email input with user@gmail.com
    And I fill password input with 123
    And I fill password_confirmation input with 1234
    And I click on the criar_conta button
    Then I should see As senhas devem ser iguais
    