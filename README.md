# Phase 3 Project Guidelines

## Learning Goals

- Build a web basic API with Sinatra and Active Record to support a React
  frontend

## Introduction

Congrats on getting through all the material for Phase 3! Now's the time to put
it all together and build something from scratch to reinforce what you know and
expand your horizons.

The focus of this project is **building a Sinatra API backend** that uses
**Active Record** to access and persist data in a database, which will be used
by a separate **React frontend** that interacts with the database via the API.

## Requirements

For this project, you must:

- Use Active Record to interact with a database.
- Have at least two models with a one-to-many relationship.
- At a minimum, set up the following API routes in Sinatra:
  - create and read actions for both models
  - full CRUD capability for one of the models
- Build a separate React frontend application that interacts with the API to
  perform CRUD actions.
- Implement proper front end state management. You should be updating state using a
  setState function after receiving your response from a POST, PATCH, or DELETE 
  request. You should NOT be relying on a GET request to update state. 
- Use good OO design patterns. You should have separate classes for each of your
  models, and create instance and class methods as necessary. 
- Routes in your application (both client side and back end) should follow RESTful
  conventions.
- Use your back end optimally. Pass JSON for related associations to the front 
  end from the back end. You should use active record methods in your controller to grab
  the needed data from your database and provide as JSON to the front end. You
  should NOT be relying on filtering front end state or a separate fetch request to
  retrieve related data.

For example, build a todo list application with a React frontend interface and a
Sinatra backend API, where a user can:

- **Create** a new todo
- **Read** a list of all todos
- **Update** an individual todo
- **Delete** a todo

A `Todo` can be tagged with a `Category`, so that each todo _belongs to_ a
category and each category _has many_ todos.

## Getting Started

### Backend Setup

This repository has all the starter code needed to get a Sinatra backend up and
running. [**Fork and clone**][fork link] this repository to get started. Then, run
`bundle install` to install the gems.

**Important**: Be sure you fork a copy of the repo into your GitHub account
before cloning it. You can do this by using the link above or by clicking the
"Octocat" button at the top of this page, then clicking "Fork" in the upper
right corner of the repo page.

[fork link]: https://github.com/learn-co-curriculum/phase-3-sinatra-react-project/fork

The `app/controllers/application_controller.rb` file has an example GET route
handler. Replace this route with routes for your project.

You can start your server with:

```console
$ bundle exec rake server
```

This will run your server on port
[http://localhost:9292](http://localhost:9292).

### Frontend Setup

Your backend and your frontend should be in **two different repositories**.

Create a new repository in a **separate folder** with a React app for your
frontend. To do this, `cd` out of the backend project directory, and use
[create-react-app][] to generate the necessary code for your React frontend:

```console
$ npx create-react-app my-app-frontend
```

After creating the project locally, you should also
[create a repository on GitHub][create repo] to host your repo and help
collaborate, if you're working with a partner.

### Fetch Example

Your React app should make fetch requests to your Sinatra backend! Here's an
example:

```js
fetch("http://localhost:9292/test")
  .then((r) => r.json())
  .then((data) => console.log(data));
```

## Project Tips

- This project is intended to focus more on the backend than the frontend, so
  try and keep the React side of things relatively simple. Focus on working with
  Active Record and performing CRUD actions. What are some interesting queries you can write? What kinds of questions can you ask of your data?
- Once you have a project idea, come up with a domain model and decide what
  relationships exist between the models in your application. Use a tool like
  [dbdiagram.io][] to help visualize your models.
- Decide on your API endpoints. What data should they return? What kind of CRUD
  action should they perform? What data do they need from the client?
- Use [Postman][postman download] to test your endpoints.
- Use `binding.pry` to debug your requests on the server. It's very helpful to use a
  `binding.pry` in your controller within a route to see what `params` are being
  sent.
- Use the [Network Tab in the Dev Tools][network tab] in the frontend to debug
  your requests.

## Resources

- [create-react-app][]
- [dbdiagram.io][]
- [Postman][postman download]

[create-react-app]: https://create-react-app.dev/docs/getting-started
[create repo]: https://docs.github.com/en/get-started/quickstart/create-a-repo
[dbdiagram.io]: https://dbdiagram.io/
[postman download]: https://www.postman.com/downloads/
[network tab]: https://developer.chrome.com/docs/devtools/network/

<hr>
<h1> Ressport </h1>

<img width="1511" alt="Screen Shot 2022-10-28 at 1 24 40 PM" src="https://user-images.githubusercontent.com/81066555/199337276-f823d3b3-cebb-423c-b61a-e1417ee66145.png">

Welcome to the Ressport App! We believe that going on an adventure doesn’t always require leaving your own backyard and culinary experiences are the perfect way to travel without ever leaving the city.

You will be building a fully functional app that allows the user to browse the top restaurants in all of Manhattans boroughs, add restaurants they would like to try to their wishlist and mark the restaurants they have been to so they can live forever on their restaurant passport.

<h2>LEARNING GOALS</h2>

In this project, the focus is building a Sinatra API backend that uses Active Record for accessing and persisting data in the database. The separate React front end will interact with the database via the API.

<h2>REQUIREMENTS</h2>
<ul>
<li>Use Active Record to interact with a database.</li>
<li>Have at least two models with a one-to-many relationship.</li>
<li>At a minimum, set up the following API routes in Sinatra:</li>
<ul>
<li>create and read actions for both models</li>
<li>full CRUD capability for one of the models</li>
</ul>
<li>Build a separate React frontend application that interacts with the API to perform CRUD actions.</li>
<li>Use good OO design patterns. You should have separate classes for each of your models, and create instance and class methods as necessary.</li>
</u>
<h1>PROJECT OVERVIEW</h1>

<h2>GETTING STARTED</h2>
<h2>backend setup</h2>

This repository has all the starter code needed to get a Sinatra backend up and running. Fork and clone this repository to get started. Then, run bundle install to install the gems.

<strong>Important:</strong> Be sure you fork a copy of the repo into your GitHub account before cloning it. You can do this by using the link above or by clicking the "Octocat" button at the top of this page, then clicking "Fork" in the upper right corner of the repo page.

The app/controllers/application_controller.rb file has an example GET route handler. Replace this route with routes for your project.
You can start your server with:
$ bundle exec rake server
This will run your server on port http://localhost:9292

Once your backend is set up, begin creating the migration tables that will update your schema, thanks to active records! Add the table name and the data types that correspond with each (this information will be provided below)- think about the relationship given the data each table holds

Restaurants table
<ul>
<li>Name, stored as a string</li>
<li>Image url, stored as a string</li>
<li>Cuisine, stored as a string</li>
<li>Prince point, stored as a string</li>
<li>Description, stored as a string</li>
<li>Reviews, stored as a string</li>
<li>Location, stored as a string</li>
<li>Address, stored as a string</li>
</ul>
Users table
<ul>
<li>Username, stored as a string</li>
<li>Password, stored as a string</li>
</ul>
Wishlists table
<ul>
<li>Restaurant foreign key</li>
<li>User foreign key</li>
</ul>
Attends table
<ul>
<li>Restaurant foreign key</li>
<li>User foreign key</li>
</ul>
Eateds table
<ul>
<li>Restaurant foreign key</li>
<li>User foreign key</li>
</ul>
Next, run the migrations. This will update the database, and create a schema file, which provides a “snapshot” of the current database.

Create data in the seeds file that correspond with each table, below is a screenshot of the restaurants used but feel free to use your own favorites!

On the model files, set up the relationships between each class by using Active Record macros, this will give you access to many of the methods necessary to work with the data. In pry, try out some of these methods to test that everything is working!

Lastly, for your backend you will set up the routes in the application controller. This is how you will access the CRUD functionality in your web application. Think GET, POST, PATCH and DELETE. When making fetch requests on the frontend- these endpoints will allow React to access the API.

<h2>Frontend</h2>

Run npm start in the directory to get the react started
