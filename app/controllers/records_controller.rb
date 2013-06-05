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
	if @owner.save
  	  flash[:success] = "Data saved successfully"
  	  redirect_to @user
    else
      render 'new'
    end
  end
end
