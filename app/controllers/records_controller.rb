class RecordsController < ApplicationController

  	

  def new
	@owner = Owner.new
	@pet = Array.new
	RecordsHelper::ALLOWED_PETS.times { |t| @pet[t] = Pet.new } 
	@pet_storage = Array.new unless defined?(@pet_storage)
	@pet_number_storage = 1 unless defined?(@pet_number_storage)  
  end
  
  def create
  	@owner = Owner.new(params[:owner])
  	@pet = Array.new
  	params[:number_of_pets].to_i.times { |t| @pet[t] = Pet.new(params[:pet][t]) }
  	pet_valid = (@pet.map { |t| t.valid? })

	if (@owner.valid? && pet_valid.all?)
	  @owner.save
	  @pet.each do |t|
	  	t.owner_id = @owner.id
	  	t.save
	  end
	  @pet_storage = Array.new
	  @pet_number_storage = 1
  	  flash[:success] = "Data saved successfully"
  	  redirect_to @user  #FIX THIS
    else
      @pet_storage = @pet
      @pet_number_storage = params[:number_of_pets]
      render 'new'
    end
  end
end
