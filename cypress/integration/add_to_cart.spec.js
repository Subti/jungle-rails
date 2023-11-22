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
  it("There is an add to cart button", () => {
    cy.get(".products article:first .price .btn").should("be.visible");
  });
  it("Click on the add to cart button", () => {
    cy.get(".products article:first .price .btn").click({ force: true });
  });
  it("The cart item count is increased by 1", () => {
    cy.get(".navbar .container .collapse .end-0").should("contain", "1");
  });
});
