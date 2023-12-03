# 💉 Testes Automatizados Cypress

## 🛜 Site computer-database.gatling
**Caso de teste 1: Testando busca de computador Apple MacBook Pro 15**
  - Verifica se a busca retorna "Nothing to display" para esse computador.

**Caso de teste 2: Testando busca de computador ASCI Blue Pacific e seus requisitos**
  - Verifica se os requisitos do computador são exibidos corretamente.

**Caso de teste 3: Adicionando o Apple MacBook Pro 10**
  - Adiciona o computador Apple MacBook Pro 10 e verifica se a mensagem de sucesso é exibida.

**Caso de teste 4 (FALHA): Adicionando um computador com a data de introdução errada**
  - Tenta adicionar um computador com informações incorretas e verifica se a validação de erro é exibida.

**Caso de teste 5 (FALHA): Adicionando um computador sem informações**
  - Tenta adicionar um computador sem preencher nenhum campo e verifica se a validação de erro é exibida.

## 🛜 Site herokuapp
**Caso de teste 1: Testando Adicionar e remover elemento**
  - Adiciona um elemento e verifica se ele existe, em seguida, remove e verifica se não existe mais.

**Caso de teste 2: Testando checkboxes**
  - Marca e desmarca checkboxes e verifica se o estado muda corretamente.

**Caso de teste 3: Testando dropdown**
  - Seleciona uma opção no dropdown e verifica se foi selecionada corretamente.

**Caso de teste 4: Testando keypress**
  - Simula a digitação de '/' e verifica se o resultado é exibido corretamente.

**Caso de teste 5: Testando entry AD**
  - Verifica se uma janela modal é aberta e a fecha.

## 👨🏻‍💻 Executando o Mochawesome via terminal

Para rodar o Mochawesome pelo terminal:

1. Certifique-se de ter o Mochawesome instalado no projeto.
2. Utilize o comando de execução de testes do Cypress com a flag para gerar o relatório Mochawesome, por exemplo:

```
/node_modules/.bin/cypress run --spec 'cypress/e2e/**/'
```
