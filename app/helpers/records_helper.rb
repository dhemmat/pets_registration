module RecordsHelper
  ALLOWED_PETS = 4

  def allowed_pets_options
  	(1..ALLOWED_PETS).map do |t|
  	  if (t>1)
  	  	text = "#{t} Pets"
  	  else
  	  	text = "#{t} Pet"
  	  end
  	  [text,t]
  	end
  end

end
