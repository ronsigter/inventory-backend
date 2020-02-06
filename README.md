# Project Description
[Inventory App](https://inventory-frontend.herokuapp.com/)
> Username: user@inventory.com
> Password: password
>
>Note! Deployed in Heroku under free account. Just refresh if not loading to wakeup server and stop its idle

Stacks Used:
- [Backend](https://github.com/ronsigter/inventory-backend):
  - Ruby on Rails
  - GraphQL-ruby
  - Docker

- [Backend](https://github.com/ronsigter/inventory-frontend):
  - React.js
  - Ant Design
  - Apollo

# Setup
1. `asdf install`
2. `gem install bundler`
3. `bundle install`
4. `docker-compose up`
5. `bundle exec rails db:create db:migrate db:seed`
6. `bundle exec rails s -b 3001`