describe('Visit the home page', () => {
  beforeEach(() => {
    cy.visit('/')
  });

  it('.click() - navigates from the homepage to the product detail page by clicking on a product', () => {
    cy.get('.products article').first().click()
    cy.get(".product-detail").should("be.visible")
  })
})