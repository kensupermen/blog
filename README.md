# ROBUST TECH HOUSE TEST SPECIFICATION

##  Ruby on Rails blog

Submitted by: **Vo Tan Tho**

URL: https://blogrth.herokuapp.com/

## User Stories

### REQUIREMENTS

#### Website

- [x] Allows users to log in/log out.
- [x] Allows users to create new blog post.
- [x] Allows users to post comments.
- [x] Allows visitors to view post list, and sort them by created date.
- [x] Seed data for posts and users.

#### API

- [x] Provides a RESTful API for retrieve posts.
- [x] Supports search for the above API.

#### Additional

- [x] Deploy your work on Heroku.
- [x] Push your code to Github.
- [x] Bootstrap for UI.

## Notes

### How to run it
The first, make sure you installed postgresql, ruby and rails. 
Run command:

```bash
cd /path/sourcecode
bundle install
rails db:create
rails db:migrate
rails db:seed
rails s

```

I provide 2 API return json data:
- /api/v1/search.json?&search=a
- /api/v1/articles.json


### About technical
- Faker(generate database)
- Devise(authentication)
- Bootstrap-material-design(UI)

