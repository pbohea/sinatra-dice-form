require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
  erb(:home)
end

get ("/process_roll/:number_of_dice/:how_many_sides") do
  @num_dice = params.fetch("number_of_dice").to_i
  
  @sides = params.fetch("how_many_sides").to_i
  @rolls = []

  @num_dice.times do
  die = rand(1..@sides)

  @rolls.push(die)
  end
  
  erb(:flexible)

end
