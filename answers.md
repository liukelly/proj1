# Q0: Why is this error being thrown?
This error is being thrown because in `home_controller.rb` at line 4, there is
an attempt to construct a Pokemon. However, there is no Pokemon model defined
yet.

# Q1: How are the random Pokemon appearing? What is the common factor between
# all the possible Pokemon that appear? *

The random Pokemon are appearing from the rendered
`app/views/home/index.html.erb` file and those Pokemon are created from
`db/seeds.db`. The common factor among them is that they are the starter Pokemon
Ash captures in the beginning of the series; in addition their level is between
1 to 19, inclusive.

# Question 2a: What does the following line do "<%= button_to "Throw a
# Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method =>
# :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If
# you're having trouble, look at the Help section in the README.
The line creates button that has the text "Throw a Pokeball!" with the CSS
classes "button" and "medium". When you click this button, it finds the
controller corresponding to the capture path, which is /capture. It sends a
patch request with the pokemon's id as a parameter. This calls capture in the
pokemon controller file, which updates the pokemon's trainer id to be the
current trainer's id, and also redirects the page to home.

# Question 3: What would you name your own Pokemon?
Fluffy

# Question 4: What did you pass into the redirect_to? If it is a path, what did
# that path need? If it is not a path, why is it okay not to have a path here?
I saved the trainer_id of the pokemon that was damaged, and I used string
interpolation to redirect to the trainer's page. (The path needed the trainer
id).

# Question 5: Explain how putting this line "flash[:error] =
# @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
