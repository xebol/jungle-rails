# Jungle

A mini e-commerce application built with Rails 6.1 for purposes of teaching Rails by example.

# Final Product
!["When a user visits the website the index page renders and shows the nav bar with links to products, categories, about us page, and the log out button"](https://github.com/xebol/jungle-rails/blob/master/docs/Screenshot%202023-05-09%20at%208.11.01%20PM.png?raw=true)
!["When a product is sold out, a sold out badge is displayed and the add to cart button is disabled"](https://github.com/xebol/jungle-rails/blob/master/docs/Screenshot%202023-05-09%20at%208.11.28%20PM.png?raw=true)
!["Cart page shows the total amount and the products in the cart. The user can also add or delete item from their cart."](https://github.com/xebol/jungle-rails/blob/master/docs/Screenshot%202023-05-09%20at%208.12.49%20PM.png?raw=true)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

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
- Rspec
- Cypress

## Rspec
- To instal rspec, do 'rails g rspec:install'
- To run rspec tests: 'bundle exec rspec --format documentation'.


## Cypress
- To install cypress, do 'npm install cypress@9.7.0 --save-dev'
- Add necessary gems: 'group :development, :test do
  gem "cypress-rails"
  gem 'database_cleaner-active_record'
end'
- Initialize cypress: rails cypress:init
- To run cypress: 'rails cypress:open'

