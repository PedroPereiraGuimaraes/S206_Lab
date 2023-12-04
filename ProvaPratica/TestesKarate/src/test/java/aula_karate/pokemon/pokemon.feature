Feature: Testando API Pokemon.

Background: Executa antes de cada teste
    * def url_base = 'https://pokeapi.co/api/v2/'
    * def url_base2 = 'https://gorest.co.in/public/v2'
    * def token = 'a3412e6870de8c1a9728c5845a2becb0e7e7e2378be407a3347db22cde1c4c11'

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

Scenario: Testando entrada no JSON de habilidades do pokemon bulbasaur e testando a verificação de ID
        Given url url_base
        And path 'pokemon/bulbasaur'
        When method get
        Then status 200
        And def habilidades = $.abilities[0].ability.url
        And print habilidades
        And url habilidades
        When method get
        And match response.id == 65
        
Scenario: Criando um usuário sem gênero
        Given url url_base2 
        And path '/users'  
        And header Authorization = 'Bearer ' + token
        And request {"name":"Tenali Ramakrishna", "email":"dawdawkikikd.ramakrishna@15ce.com", "status":"active"}
        When method post
        Then status 422