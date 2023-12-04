# 💉 Testes de API Karate
***Alunos:***
- Laura Pivoto Ambrósio
- Francisco P. Guimarães
- Pedro P. Guimarães
## 🛜 API pokeapi.co
**Caso de teste 1: Listando todos os usuarios**
  - Verifica se o status da requisição foi um sucesso.

**Caso de teste 2: Listando informações de um usuario**
  - Verifica se o status da requisição foi um sucesso e se as informações correspondem.

**Caso de teste 3 (Falha): Listando informações de um usuario com falha**
  - Verifica se o status da requisição foi retornou um erro.

**Caso de teste 4: Listando informações de um resource**
  - Verifica se o status da requisição foi um sucesso e se as informações correspondem.

**Caso de teste 5 (Falha): Listando informações de um resource com falha**
  - Verifica se o status da requisição foi retornou um erro.

**Caso de teste 6: Fazendo um novo registro**
  - Envia os dados e verifica o status de sucesso.

**Caso de teste 7: Criando um novo usuario**
  - Envia os dados e verifica o status de sucesso.

**Caso de teste 8 (Falha): Fazendo um novo registro com campos faltando**
  - Verifica se o status da requisição foi retornou um erro.

**Caso de teste 9: Fazendo um login com informações corretas**
  - Envia os dados e verifica o status de sucesso.

**Caso de teste 10 (Falha): Fazendo um login com informações faltando**
  - Envia os dados e verifica o status de erro.

**Caso de teste 11: Deletando um usuario**
  - Faz a requisição com metodo Delete.
  
## 👨🏻‍💻 Executando o Mochawesome via terminal

Para rodar o Karate pelo terminal:

1. Verifique se todas as bibliotecas necessarias estão devidamente instaladas.
2. Verifique se o maven está configurado corretamente.
3. Execute o comando na pasta raiz do projeto.

```
mvn test -Dtest=apiTestsRunner
```
