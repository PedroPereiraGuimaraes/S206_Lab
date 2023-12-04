Feature: TESTS API REQRES GET METHODS

Background:
  * url 'https://reqres.in/api'
  * def register = read("register.json")
  * def new_user = read("new_user.json")
  * def register_erro = read("register_erro.json")
  * def login = read("login.json")
  * def login_erro = read("login_erro.json")

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

