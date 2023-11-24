# Jungle

Jungle is a fully functional, deployment-ready mini e-commerce application built with Rails 6.1. It's designed as a platform for buying a variety of plants. The application integrates with Stripe for secure and reliable payment processing.

## Features

- User authentication: Users can sign up, log in, and log out.
- Product display: Products are displayed with images, descriptions, and prices.
- Shopping cart: Users can add items to their cart, view their cart, and proceed to checkout.
- Payment processing: Payments are handled securely via Stripe.
- Order summary: After checkout, users receive a summary of their order by email.
- Admin features: Admin users can create and manage items and categories.

## Screenshots

![Home Page](/docs/home_page_1.png)
![Home Page](/docs/home_page_2.png)
![Product Page](/docs/product_page.png)
![Cart Page](/docs/cart_page.png)

## Setup

1. Run `bundle install` to install dependencies.
2. Create `config/database.yml` by copying `config/database.example.yml`.
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`.
4. Run `bin/rails db:reset` to create, load and seed db.
5. Create .env file based on .env.example.
6. Sign up for a Stripe account.
7. Put Stripe (test) keys into appropriate .env vars.
8. Run `bin/rails s -b 0.0.0.0` to start the server.

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe