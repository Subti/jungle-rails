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
  it("Should fill out the signup form", () => {
    cy.get("input[name='user[name]']").type("Test User");
    cy.get("input[name='user[email]']").type("test@test.test");
    cy.get("input[name='user[password]']").type("password");
    cy.get("input[name='user[password_confirmation]']").type("password");
  });
  it("Click on the signup button", () => {
    cy.get("input[type='submit']").click();
  });
  it("Is redirected to the home page", () => {
    cy.get(".products article").should("be.visible");
  });
  it("There is a logout button", () => {
    cy.get(".nav-link").contains("Logout").should("be.visible");
  });
  it("Click on the logout button", () => {
    cy.get(".nav-link").contains("Logout").click();
  });
  it("Is redirected to the login page", () => {
    cy.get(".login-form").should("be.visible");
  });
  it("There is a login form", () => {
    cy.get(".login-form").should("be.visible");
  });
  it("Should fill out the login form", () => {
    cy.get("input[name='email']").type("test@test.test");
    cy.get("input[name='password']").type("password");
  });
  it("Click the login button", () => {
    cy.get("input[type='submit']").click();
  });
  it("Is redirected to the home page", () => {
    cy.get(".products article").should("be.visible");
  });
  it("Logs the user into the account they just created", () => {
    cy.get(".nav-link").contains("Test User").should("be.visible");
  });
  it("There is a logout button", () => {
    cy.get(".nav-link").contains("Logout").should("be.visible");
  });
});
