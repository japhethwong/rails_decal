# Instructions

This rails app is meant to help people get a feel for basic static pages.  The
readme contains the instructions.  If there are bugs or comments feel free to
leave an issue on this repo or ask on Piazza.

This lab is to get you started in learning Static Pages.  Between each change you should refresh your browser to observe changes.  If that doesn't work try restarting the server.
Google is also your best friend.  Also there is a few questions on the form to answer.  This is due at the beginning of the next class.

## Starting with Routing:
  When you first run the rails server command we get the general rails page.  However if we look
  around our app there is already a view for the static page that corresponds to home (app/views/pages/home.html.erb).
  Our first job is to make that our home page!  If you get stuck refer to the lecture slides
  or look at Rails Routing guide.  Remember what we need to do to get from the request to getting back the view
  to our browser.

## Updating the Landing Page:
  First let's personalize the landing page a little.  On line 10 there is the line:
  ```
  <a class="navbar-brand" href="/">Start Bootstrap</a>
  ```
  This is an a tag, which signifies it is a link.  Class signifies the css class or
  classes it has and href is where it actually linkes to.
  Let's rebrand it from Start Bootstrap to something fun.  Replace it with anything
  you want.  If you can't figure out what to put just go with the name of your favorite
  book. In lines 37 and 38 there are the lines:
  ```
    <h1>Your Landing Page</h1>
    <h3> A template for the Rails Decal Lab</h3>
  ```
  These h1 and h3 tags signifies headers.  They contain the text that appears on your
  banner.  Update these to something fun as well.


## Your favorite Animal:
  Did you notice that little cat at the bottom of the page?  Well since it is your page you should update
  it to your favorite animal.  First let's find the h2 tag in the Home page and change the contents of it
  to your favorite animal.  In the p tag right below it explain why it is.

  Now let's look at the image tag below it:
  ```
    <img class="img-responsive" src="http://confrazzled.com/wp-content/uploads/2014/08/cat2.jpg" alt="">
  ```
  If we look at this tag it seems like we are getting the cat image from
    http://confrazzled.com/wp-content/uploads/2014/08/cat2.jpg
  Let's change the image by finding the image of your favorite animal.  Refresh your page to see if it
  worked.

## Your About page:
  Currently if you click on the About tab in your nav bar you can't find the page.  Why does that happen when we do    have an in our app/views/pages/about.html.erb?  How can we make it work?

  This about page has no styling.  Change your name on the page!

## Doing some ERB:
  Now we want to fill in our Major and Age (which is blank and 7 respectively).  Let's try and do this
  without changing the HTML and just using our controller WITHOUT editing the html.erb.
  
  Next let's add one more piece of information, your favorite song.  Let's do it using an instance variable in embedded ruby rather than hardcoding into the html.

## Adding CSS classes:
  If you look at the app/views/pages/about.html.erb there is an empty image tag at the bottom.
  Add the css class "circular" to it.  What happens?  Can we change this image to another one?  Look at
  app/assets/stylesheets/landing.css.  Scroll to the bottom of the file and see what you find.  Try to
  change this image to an image of yourself?

## Extra (Do this if the homework was way too easy for you):
  Try to refractor the code so that we don't have to repeat the navbar in both the about and the home page.
  Take a look at the layouts folder under views to get a clue on how to do this.

## How to submit
  Run these commands
  ```
  git add .
  git commit -am "Routing"
  ```
  Create a new repository in your Github account called hw1-sp15.  Follow the instructions on how to push up an existing repository then fill out this google doc https://docs.google.com/forms/d/1LWMH3GMYa7ZI4O8_U83pxzLO769TcSCZYrFw7JCSAdY/viewform?usp=send_form
