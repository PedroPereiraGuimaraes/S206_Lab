/// <reference types="cypress"/>

describe('Criando cenário de teste para o site herokuapp', ()=> {

  it('Caso de teste: Testando Adicionar e remover elemento', () => {
      cy.visit('https://the-internet.herokuapp.com')
      cy.get('ul > :nth-child(2) > a').click()
      cy.get('[onclick="addElement()"]').click()
      cy.get('.added-manually').should('exist')
      cy.get('.added-manually').click()
      cy.get('.added-manually').should('not.exist')
  })

  it('Caso de teste: Testando checkboxes', () => {
      cy.visit('https://the-internet.herokuapp.com')
      cy.get(':nth-child(6) > a').click()
      cy.get('#checkboxes > :nth-child(1)').click()
      cy.get('#checkboxes > :nth-child(1)').should('be.checked')
      cy.get('#checkboxes > :nth-child(3)').click()
        cy.get('#checkboxes > :nth-child(3)').should('not.be.checked')
  })

  it('Caso de teste: Testando dropdown', () => {

    cy.visit('https://the-internet.herokuapp.com')
    cy.get(':nth-child(11) > a').click()
    cy.get('#dropdown').select('Option 1')
    cy.get('#dropdown').should('have.value', '1')

  })

  it('Caso de teste: Testando keypress', () => {

    cy.visit('https://the-internet.herokuapp.com')
    cy.get(':nth-child(31) > a').click()
    cy.get('#target').type('/')
    cy.get('#result').should('contain.text', 'You entered: SLASH')

  })

  it('Caso de teste: Testando entry AD', () => {

    cy.visit('https://the-internet.herokuapp.com')
    cy.get(':nth-child(15) > a').click()
    cy.get('.modal-title > h3').should('contain.text', 'This is a modal window')
    cy.get('.modal-footer > p').click()

  })

})

  