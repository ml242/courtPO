# Get-A-Dilla User Stories

####Relationships:

Customer has many :dillas

Dilla has_and_belongs_to_many ingredients
Dilla belongs to :customer

Ingredient has_and_belongs_to_many dillas

####Tables: 

Customer: id, name, e-mail, username, password
Dillas: id, price, customer_id
Ingredients: id, name

dillas_ingredients: dilla_id, ingredient_id

####User Stories:

As a user who is not logged in, 
I want to go to the main page
so I can sign up or login

As a logged in user, i want to view my order history, so i can remember my past orders

As a logged in user, i want to order a new dilla, so I can attempt to satisfy my burning desire for the dillas

####User flow:

users should be able to click a **login** link and be redirected to **login** page with form

users should be able to click **signup** link and be redirected to **signup** page with form

users should be able to click on a **logout** link and be logged out, stay on the same page

after submitting login form, user should be redirected to the user page, where they should be able to cick on an **order dilla** link and view their order history below, including date, dilla, and ingredients

any item with in the order history should have an **order again** link which would take them to an order page with the prior items filled in

clicking on an **order dilla** link will take you to a form with empty fields for ingredients to select

####Project timing

finish user stories MVC by tomorrow night
clean up structure and CSS wednesday
if time, incorporate twilio for orders on Thursday






