class RecordsController < ApplicationController
  
  def new
	@owner = Owner.new
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
