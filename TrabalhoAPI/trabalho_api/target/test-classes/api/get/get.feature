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