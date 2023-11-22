describe("Home", () => {
  it("should navigate to the home page", () => {
    cy.visit("/");
  });
  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });
  it("There is 2 products on the page", () => {
    cy.get(".products article").should("have.length", 2);
  });
  it("Click on the first product", () => {
    cy.get(".products article:first").click();
  });
  it("Product details page is visible", () => {
    cy.get(".product-detail").should("be.visible");
  });
  it("Product details page has the correct title", () => {
    cy.get(".product-detail h1").should("contain", "Scented Blade");
  });
  it("Product details page has the correct quantity", () => {
    cy.get(".product-detail .quantity").should("contain", "18");
  });
  it("Product details page has the correct price", () => {
    cy.get(".product-detail .quantity").should("contain", "24.99");
  });
});
