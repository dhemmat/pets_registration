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
  	@pet = Array.new
  	params[:number_of_pets].to_i.times do |t|
  		@pet[t] = Pet.new(params[:pet][t]) 
  	end

	if (@owner.valid? && (@pet.all? { |t| t.valid? }))
	  @owner.save
	  @pet.each { |t| t.save}
  	  flash[:success] = "Data saved successfully"
  	  redirect_to @user  #FIX THIS
    else
      render 'new'
    end
  end
end
