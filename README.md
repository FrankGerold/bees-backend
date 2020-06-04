# Bees!

## A quick, fun and easy quiz app for learning about bees and wildlife conservation.

### Features
* Dynamic single-page web application.
* Randomly generates quizzes for users to attempt and saves their scores.
* ReactJS front end for intuitive UI.
* Redux & Thunk for centralized state control.
* Ruby on Rails back end with PostgreSQL database for managing quizzes and user accounts.
* BCrypt and JWT using Elliptic-Curve Cryptography for authentication

### [Front-End Repo Here](https://github.com/FrankGerold/bees-frontend "Bees Front-End")

### Installation
You'll need an instance of [PostgreSQL](https://www.postgresql.org/download/) running on your local machine,
and an installation of Ruby on Rails (6+).

From the base bees-backend directory in your shell of choice, you'll want to run `bundle install`, followed by `rails db:setup`
Finally, `rails server` will launch the API locally @ port 3000, ready for the front-end react app to connect!
