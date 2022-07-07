# README


# Adnat Organisation Project

# Objectives

Ruby on Rails application that uses

A sqlite database ActiveRecord Restful routes , Sessions , Login/Logout

# Overview
The goal of this project is to build Organisation and Shift that you can create shift and see on the board more information like cost, start time, finish time

There is implementing Organisation-Shift using multiple objects that interact, including separate classes for User , Organisation and Shift.

You can go /organisations page and able to create new organisation and see all organisation list you can click  and see more option like edit and delete action . You are not able to Signup without click any organisation(organisation/id)that way you can create new user and login . Once a user is logged in, they are able to create shifts , view all the shifts.

There are controller tests to make sure that you build the appropriate controller actions that map to the correct routes.

Gemfile and environment.rb This project is supported by bundler and includes a Gemfile.

# Run bundle install before getting started on the project.

Rails response
Config/routes - matches route with controller/action logic in action will process the request Controller may interact with model Render view with given data

Nested Routes

Patterns for defining nested routes
Define Routes config/routes Handle Request in our controller Render data on given view << really minimal changes need to the view >> nested routes for Bicycles resources organisations/id/users/new f

Models
There are three models in app/models, one User model , one Organisation and one Shift. Both classes are inherit from ActiveRecord::Base.

Migrations
You are three migrations to create the User , Organisation and shift tables.

User are have a name, email, and password, and belongs to organisation.

Shift belongs to user 

Associations
There are relationship between users , organisations and shifts.

Home Page
There is a controller action to load the home page. You will want to create a view that will eventually link to both a login page and signup page. The homepage is responding to a GET request to /organisations.

Organisation Index Page
There is a controller action that will load the organisations list page. You can see organisations page without logged in user but you have to click organisation and signup new account

Create Organisation
There are two controller actions, one to load the create organisation form, and one to process the form submission. The organisation should be created and saved to the database. The form is loaded via a GET request to /new and submitted via a POST to /submited.

Show Organisation
You will need to create a controller action that displays the information for a single organisation. You will want the controller action to respond to a GET request to /organisations/:id.

Create Shift
You will have one option for creating new shift  . You can make create organisation and signup account login and create shift 

Sign Up
There are two controller actions, one to display the user signup and one to process the form submission. The controller action that processes the form submission should create the user and save it to the database.

The form to sign up should be loaded via a GET request to organisations/id/users/new and submitted via a POST request to organisations/id/users/new.

Make sure you add the Signup link to the home page.



Log In
The form to login is loaded via a GET request to /login and submitted via a POST request to /login.

Log Out
There are controller action to process a GET request to /logout to log out. The controller action should clear the session hash, and redirect the user to /organisations.

Protecting The Views
You can see , Inventory add Organisations without they're logged in.

There are two helper methods current_user and logged_in?. I use these helper methods to block content if a user is not logged in.

Dont forget to bundle install before start
