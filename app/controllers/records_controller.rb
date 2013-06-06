class RecordsController < ApplicationController

  	

  def new
	
	@owner = Owner.new
	@pet = Array.new
	RecordsHelper::ALLOWED_PETS.times { |t| @pet[t] = Pet.new } 
	@pet_storage = Array.new unless defined?(@pet_storage)  
	#	
    #	RecordsHelper::ALLOWED_PETS.times { |t| @pet_storage[t] = {name:'', age:'', pet_type_id:''}}
	#end
  end
  
  def create
  	@owner = Owner.new(params[:owner])
  	@pet = Array.new
  	params[:number_of_pets].to_i.times do |t|
  		@pet[t] = Pet.new(params[:pet][t])
  		@pet[t].owner_id = @owner.id 
  	end

	if (@owner.valid? && (@pet.all? { |t| t.valid? }))
	  @owner.save
	  @pet.each { |t| t.save}
  	  flash[:success] = "Data saved successfully"
  	  redirect_to @user  #FIX THIS
    else
      @pet_storage = @pet
      render 'new'
    end
  end
end
