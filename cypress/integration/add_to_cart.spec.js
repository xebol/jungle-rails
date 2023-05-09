describe('Visit the home page', () => {
  beforeEach(() => {
    cy.visit('/')
  });
 
  it('.click() - add to cart and confirm that count of the cart button changes when products are added', () => {
    cy.contains('My Cart (0)').should('be.visible')
    cy.get('.products article').contains('Add').click({force: true})
    cy.contains('My Cart (1)').should('be.visible')
  })
})