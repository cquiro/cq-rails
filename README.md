# CQ-Rails

[![Build Status](https://travis-ci.org/wolox-training/cq-rails.svg?branch=master)](https://travis-ci.org/wolox-training/cq-rails)


base url: https://boiling-meadow-54161.herokuapp.com/api/v1

verb | uri | use | params
---- | --- | ------ | ---
POST | /users | Sign up | { :first_name, :last_name, :email, :password, :password_confirmation }
POST | /users/sign_in | Sign in | { :email, :password }
GET  | /books | Get a list of books | NA
GET  | /books/:id | Get a book | NA
