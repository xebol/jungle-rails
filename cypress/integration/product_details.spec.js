describe('Visit the home page', () => {
  beforeEach(() => {
    cy.visit('/')
  });

  it("There are products on the page", () => {
    cy.get(".products article").should("be.visible");
  });

  it("There are 2 products on the page", () => {
    cy.get(".products article").should("have.length", 2);
  });

  it('.click() - navigates from the homepage to the product detail page by clicking on a product', () => {
    // cy.get('.products article').click()
    cy.get('.products article').first().click()
    cy.get(".product-detail").should("be.visible")
  })
  })