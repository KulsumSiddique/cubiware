TV Schedule [![Build Status](https://travis-ci.org/brapacz/cubiware.svg?branch=master)](https://travis-ci.org/brapacz/cubiware)
================

### Introduction
----------------

The code you'll write should be the code that you're happy to put forward for peer review, or deploy into production.
Some of things that are worth paying attention to:

* class hierarchy design (single responsibility, cohesion, etc)
* structure and organisation of code, as well as uniform style (hint: Rubocop could be a really helpful tool here)
* handling of errors and various possible edge cases (error 500 is not a good thing to have anywhere)

I expect you to use  Ruby and Rails 5 (Ruby 2.3), write some tests in a framework of your choice, and utilise any other extra services as needed (e.g docker).

If anything is not explicitly specified in the task - feel free to make reasonable assumptions, or ask for clarification if you're unsure.


### Task
--------

We need simple REST API for TV guide. You have to design models with information of "channels", "shows", "categories", "schedules".
Populate it with sample data (make rake task for generating random data).
Design, implement and document API for REST schedules endpoint. Use standards for documentation and validation (e.g. Swagger, Api blueprint, Raml, json schema).
Integrate tests with documentation (TDD).

Create one web page (bootstrap css) for searching and viewing schedules.
Do not overengieneer solution - come up with a clean and maintanable codebase that presents best practices

### Sending in the code
-------------------

Asume you work in a team and commit to git accordingly (comment your code with proper annotations).
Publish your project on github (private repo should be shared with roxer account if you prefere)
