class PokemonsController < ApplicationController
  def capture
    p_id = params[:id]
    pokemon = Pokemon.find(p_id)
    pokemon.trainer_id = current_trainer.id
    pokemon.save!
    redirect_to '/'
  end

  def damage
    p_id = params[:id]
    pokemon = Pokemon.find(p_id)
    trainer_id = pokemon.trainer_id
    pokemon.health = pokemon.health - 10
    if pokemon.health <= 0
      pokemon.destroy
    else
      pokemon.save!
    end
    redirect_to "/trainers/#{trainer_id}"
  end


  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.create(name:params[:name], level:1, health:100, trainer_id:current_trainer.id)
    if @pokemon.save
      redirect_to "/trainers/#{current_trainer.id}"
    else
      render "Add new pokemon!"
    end
  end


end
