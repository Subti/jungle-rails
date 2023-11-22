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
  it("There is a signup button", () => {
    cy.get(".nav-link").contains("Sign Up").should("be.visible");
  });
  it("Click on the signup button", () => {
    cy.get(".nav-link").contains("Sign Up").click();
  });
  it("There is a signup form", () => {
    cy.get(".signup-form").should("be.visible");
  });
  it("There is a login button", () => {
    cy.get(".nav-link").contains("Login").should("be.visible");
  });
});
