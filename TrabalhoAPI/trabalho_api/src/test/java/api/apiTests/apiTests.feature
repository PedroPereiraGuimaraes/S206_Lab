Feature: TESTS API REQRES GET METHODS

Background:
  * url 'https://reqres.in/api'

Scenario: LIST USERS
    Given path '/users'
    When method GET
    Then status 200

Scenario: SINGLE USER
    Given path '/users/2'
    When method GET
    Then status 200
    And match response.data.id == 2
    And match response.data.email == 'janet.weaver@reqres.in'

Scenario: SINGLE USER NOT FOUND
    Given path '/users/23'
    When method GET
    Then status 404

Scenario: SINGLE USER NOT FOUND
    Given path '/unknown'
    When method GET
    Then status 200

Scenario: SINGLE RESOURCE
    Given path '/unknown/2'
    When method GET
    Then status 200

Scenario: SINGLE RESOURCE NOT FOUND
    Given path '/unknown/23'
    When method GET
    Then status 404

Scenario: Fazendo um registro 
    And path '/register'
    And request {"email": "eve.holt@reqres.in","password": "pistol"}
    When method post
    Then status 200

Scenario: Criando um novo usuario
    And path '/users'
    And request {"name": "morpheus","job": "leader"}
    When method post
    Then status 201

Scenario: Fazendo um registro com erro
    And path '/register'
    And request {"email": "sydney@fife"}
    When method post
    Then status 400

Scenario: Fazendo um login com sucesso
    And path '/login'
    And request {"email": "eve.holt@reqres.in", "password": "cityslicka"}
    When method post
    Then status 200

Scenario: Fazendo um login com erro
    And path '/login'
    And request {"email": "eve.holt@reqres.in"}
    When method post
    Then status 400

Scenario: Deletando um user
    And path '/users/2'
    When method delete
    Then status 204
