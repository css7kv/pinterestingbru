==PINTERESTING BRU

==MVP
*Create an app using authentication with either Devise and/or Omniauth Facebook, that will allow a user to log in to their account and add pins to boards.

==Models

*Think carefully about the relationship between a user, board, and pin. What is the relationship between a user and a board? A board and a pin? A user and a pin? A user should have many boards, and should have many pins through a board. A board should have and belong to many pins. Play around with Pinterest or ask a friend if you're not sure how Pinterest works. Think about what attributes each of these models will need.

==Some suggestions, but feel free to come up with your own:

*A board may have a name and description. It could also have a public/private setting, where public means any logged in user can view it, and private means only that specific user can view it (think about how you would implement this!)
*A pin may have a title, description, a URL, and likes.

==Views/Controllers

*In addition to the login/signup views, make sure the user can CRUD boards and CRUD pins. Allow any logged in user to view all public boards. Note that it is important that users should not be able to CRUD other user's boards and pins. To do this, you will need to first check if the current user is the same as a board's user. Think about where and how you want to do this.

*Lastly, install Bootstrap into the app, and play around with how it looks.

==Hints

*Remember to switch the default rails db to Postgres.
*Remember to run the correct commands to integrate Bootstrap into Heroku. In general, be extra careful when you're pushing an app with gems that you've installed -- often extra conifiguration is needed.

==Features

*Add likes to pins
*Add followers
*Add the ability to re-pin from other boards
*Make your app as close to Pinterest as possible! (add categories, comments, etc.)
