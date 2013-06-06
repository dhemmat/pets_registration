FactoryGirl.define do
	factory :owner do
		name "David Hemmat"
		email "david@example.com"
		phone "(809)-241-4463"
		address "Embrujo 1, calle 7, no. 25, Santiago"
	end
end

FactoryGirl.define do
	factory :pet_type do
		name "Fish"
	end
end

FactoryGirl.define do
	factory :pet do
		name "Sample Pet"
		age "1"
		pet_type_id "1"
		owner_id "1"
	end
end