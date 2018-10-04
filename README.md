# CQ-Rails

[![Build Status](https://travis-ci.org/wolox-training/cq-rails.svg?branch=master)](https://travis-ci.org/wolox-training/cq-rails)


base url: https://boiling-meadow-54161.herokuapp.com/api/v1

verb | uri | use | params
---- | --- | ------ | ---
POST | /users | Sign up | { :first_name, :last_name, :email, :password, :password_confirmation }
POST | /users/sign_in | Sign in | { :email, :password }
GET  | /books | Get a list of books | NA
GET  | /books/:id | Get a book | NA
GET  | /users/:user_id/rents | Get a list of the user's rents | NA
POST  | /users/:user_id/rents | Create a rent for the user | { :book_id, :start_date, :end_date, :returned_at }
POST  | /book_suggestions | Create a book suggestion | { :synopsis, :price, :author, :title, :link, :publisher, :year }
