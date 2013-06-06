require 'spec_helper'

describe "Record pages" do

	subject { page }

	describe "#register pet page" do
		before { visit new_record_path }

		it { should have_selector('h1', text:'Pet Registration') }
		it { should have_selector('title', text:'Pet Registration') }
	end

	describe "#show registered information page" do
		let (:owner) { FactoryGirl.create(:owner) }
		let(:pet) {FactoryGirl.create(:pet)}
		let(:pet2) {FactoryGirl.create(:pet)}
		let(:pet_type) {FactoryGirl.create(:pet_type)}
		
		before do
		  pet.owner_id = owner.id
		  pet2.owner_id = owner.id
		  pet.pet_type_id = pet_type.id
		  pet2.pet_type_id = pet_type.id
		  visit record_path(owner) 
		end

		it { should have_selector('h1', text:'Registered information') }
		it { should have_selector('title', text:'Pet Registration') }

		describe "Test the factories" do
			it "should be valid" do
				pet.should be_valid
				pet2.should be_valid
				owner.should be_valid
				pet_type.should be_valid
			end
		end

		describe "#owners information" do
			it { should have_selector('#owner-id', text:owner.id.to_s)}
			it { should have_selector('#owner-name', text:owner.name)}
			it { should have_selector('#owner-phone', text:owner.phone)}
			it { should have_selector('#owner-email', text:owner.email)}
			it { should have_selector('#owner-address', text:owner.address)}
		end

		describe "#pets information" do
			it { should have_selector('#pet-1-name', text:pet.name)}
			it { should have_selector('#pet-1-age', text:pet.age)}
			it { should have_selector('#pet-1-type', text:pet_type.name)}

			it { should have_selector('#pet-2-name', text:pet2.name)}
			it { should have_selector('#pet-2-age', text:pet2.age)}
			it { should have_selector('#pet-2-type', text:pet_type.name)}

		end

	end
end