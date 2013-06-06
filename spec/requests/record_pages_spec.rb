require 'spec_helper'

describe "Record pages" do

	subject { page }

	describe "register pet page" do
		before { visit new_record_path }

		it { should have_selector('h1', text:'Pet Registration') }
		it { should have_selector('title', text:'Pet Registration') }
	end

	describe "show registered information page" do
		let (:owner) { FactoryGirl.create(:owner) }
		before { visit record_path(owner) }

		it { should have_selector('h1', text:'Registered information') }
		it { should have_selector('title', text:'Pet Registration') }
	end
end