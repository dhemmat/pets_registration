class RecordsController < ApplicationController

  def new
	@owner = Owner.new
	@pet = Array.new
	RecordsHelper::ALLOWED_PETS.times do |t| 
		@pet[t] = Pet.new 
	end
  end
  
  def create
  	@owner = Owner.new(params[:owner])
  	params[:number_of_pets].to_i.times do |t|
  		#@pet[t] = Pet.new(params[:]) 
  	end

	if (@owner.save && (@pet.all { |t| t.valid? }))
  	  flash[:success] = "Data saved successfully"
  	  redirect_to @user
    else
      render 'new'
    end
  end
end
