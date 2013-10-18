# WDI Week 4 Day 3 Homework
## Blog? Articles? Blarghticles!

Using your fast-growing understanding of Ruby on Rails, you will create a simple blogging application for tonight's homework.

### Process!

1. Sketch out your relationships
2. Build your database and models
3. Figure out what should be on which page and how each page links to other pages. Hint: Use resources


### Rails new
Start by creating a new rails app called 'Blarghticles'

```bash
rails _3.2.14_ new Blarghticles -d postgresql
```
### Specs
Your Blarghticles app should allow someone to create, read, update, and delete `Articles`, as well as post comments on any `Article`.

Articles should have:
* A title
* A body
    * The actual text of the article
* Comments
* Timestamps

---
Each `Article` can have many `Comments`.

Comments have:
* An article_id
* A body
* Timestamps

---
### Functionality

The root path of your application should render `articles#index`

`articles#index`

* The articles index view should display a list of Article titles, the date each was posted
    * Each title should be a link that navigates to the `articles#show` path for that particular article
* A link to the new Article form.

`articles#show`

* The article show path should display the article, as well as all of its `Comments`
* There should be links to `edit` and `delete`

#EXTRA
## Add the ability to tag Articles.

`Articles` can have multiple `Tags`, and `Tags` can also have many `Articles`. This is a direct many-to-many relationship.

`Articles` both *have* and *belong to many* `Tags`

`Tags` both *have* and *belong to many* `Articles`

Tags have:
* A name

# Try inputting these with a single text-field of comma separated tags.






