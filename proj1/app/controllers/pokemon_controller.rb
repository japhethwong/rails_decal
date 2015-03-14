class PokemonController < ApplicationController
  def capture
    @pokemon = Pokemon.find(params[:id])
    @pokemon.trainer = current_trainer
    @pokemon.save
    redirect_to root_path
  end

  def damage
    @pokemon = Pokemon.find(params[:id])
    @trainer = @pokemon.trainer
    @pokemon.health -= 10
    if @pokemon.health <= 0
      @pokemon.destroy
    else
      @pokemon.save
    end
    redirect_to @trainer
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.create(pokemon_params)
    @pokemon.level = 1
    @pokemon.health = 100
    @pokemon.trainer = current_trainer

    if @pokemon.save
      flash[:error] = nil # Hack: Otherwise the error message doesn't seem to disappear even on valid input.
      redirect_to @pokemon.trainer
    else
      flash[:error] = @pokemon.errors.full_messages.to_sentence
      render "new"
    end
  end

  private

  def pokemon_params
    params.require(:pokemon).permit(:name)
  end
end
