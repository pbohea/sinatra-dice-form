require "sinatra"
require "sinatra/reloader"

get("/") do

  erb(:home)
end

get ("/process_roll") do
  @dice = params.fetch("dice").to_i
  
  @sides = params.fetch("sides").to_i
  @rolls = []

  @dice.times do
  die = rand(1..@sides)

  @rolls.push(die)
  end
  
  erb(:flexible)

end
