# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

owners = Owner.create([ 
	{
	  name: "Peter Parker", 
	  phone:"(809)-241-4444", 
	  email:"peter.parker@example.com", 
	  address:"Embrujo 1, Calle 7, No. 25, Santiago"
	},
	{
	  name: "Peter Pan", 
	  phone:"(809)-241-5555", 
	  email:"peter.pan@example.com", 
	  address:"Embrujo 2, Calle 2, No. 23, La Romana"
	},
	{
	  name: "Pablo Picapiedra", 
	  phone:"(809)-241-8888", 
	  email:"pedro.picapiedra@example.com", 
	  address:"Las Laguras, Calle 8, No. 22, Santiago"
	},
	{
	  name: "Pablo Marmol", 
	  phone:"(809)-241-6666", 
	  email:"pablo.marmol@example.com", 
	  address:"Las Lechugas, Calle 2, No. 33, Higuey"
	},
	{
	  name: "Pablo Picasso", 
	  phone:"(809)-241-9999", 
	  email:"pablo.picaso@example.com", 
	  address:"Embrujo 8, Calle 8, No. 88, Santiago"
	}])

pet_types = PetType.create([{ name:"Dog" },{ name:"Cat" },{ name:"Fish" },{ name:"Other" }])

pets = Pet.create([
	{
	  name: "Fluffy"
	  age: "2 Weeks"
	  pet_type_id: "2"
	  owner_id:"1"
	},
	{
	  name: "Pinky"
	  age: "1 Year"
	  pet_type_id: "1"
	  owner_id:"1"
	},
	{
	  name: "Chewy"
	  age: "2 Years"
	  pet_type_id: "3"
	  owner_id:"1"
	},
	{
	  name: "Fuzzy"
	  age: "2 Months"
	  pet_type_id: "1"
	  owner_id:"2"
	},
	{
	  name: "Stripes"
	  age: "5 Years"
	  pet_type_id: "4"
	  owner_id:"3"
	},
	{
	  name: "Yelpy"
	  age: "4 Years"
	  pet_type_id: "1"
	  owner_id:"3"
	},
	{
	  name: "Oinky"
	  age: "7 Months"
	  pet_type_id: "4"
	  owner_id:"4"
	},
	{
	  name: "Pooch"
	  age: "2 Years"
	  pet_type_id: "1"
	  owner_id:"5"
	},
	{
	  name: "Kitty"
	  age: "1 Year"
	  pet_type_id: "2"
	  owner_id:"5"
	},
	{
	  name: "Blubbles"
	  age: "6 Months"
	  pet_type_id: "3"
	  owner_id:"5"
	},
	{
	  name: "Slithery"
	  age: "8 Months"
	  pet_type_id: "4"
	  owner_id:"5"
	}])