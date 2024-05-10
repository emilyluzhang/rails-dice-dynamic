class StaticController < ApplicationController
  def home 
    render({:template => "game_templates/home"})
  end 
  def roll 
    @num_dice = params.fetch("num").to_i
    @sides = params.fetch("sides").to_i
    @rolls = []

    @num_dice.times do
      die = rand(1..@sides)

      @rolls.push(die)
    end
    render({:template => "game_templates/roll"})
  end 
end 
