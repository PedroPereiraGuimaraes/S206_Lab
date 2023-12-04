Feature: Testando API Pokemon.

Background: Executa antes de cada teste
    * def url_base = 'https://pokeapi.co/api/v2/'

Scenario: Testando retorno pokemon/bulbasaur
        Given url url_base
        And path 'pokemon/bulbasaur'
        When method get
        Then status 200

Scenario: Testando retorno pokemon/informação errada
        Given url url_base
        And path 'pokemon/hm'
        When method get
        Then status 404
        
Scenario: Testando retorno bulbasaur e verificando o JSON.
    Given url url_base
    And path 'pokemon/bulbasaur'
    When method get
    Then status 200
    And match response.name == "bulbasaur"

