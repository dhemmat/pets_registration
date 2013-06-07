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
  	  redirect_to record_path(@owner)
    else
      @pet_storage = @pet
      @pet_number_storage = params[:number_of_pets]
      render 'new'
    end

  end

  def show
    @owner = Owner.find_by_id(params[:id])
    if @owner.nil?
      respond_to do |format|
        format.html
        format.json { render :json => {error: "This record does not exist"}.to_json }
      end
    else
      @pet = Pet.where("owner_id = ?", params[:id])
      @json_response = format_json_show
      respond_to do |format|
      	format.html
      	format.json { render :json => @json_response.to_json }
      end
    end
  end

  def format_json_show
  	@response = { id:@owner.id, name: @owner.name, email: @owner.email, phone:@owner.phone, address:@owner.address }
  	@response[:pets_owned] = @pet.map { |hash| { name: hash[:name], age: hash[:age], pet_type: (PetType.where("id = ?", hash[:pet_type_id])[0].name) }}
  	@response
  end 


end
