require 'rails_helper'

RSpec.describe Candidate, type: :model do

	context "#successfully" do
		let(:candidate) { build(:candidate, 
			full_name: "Camila Vegas",
			social_name: "Camila",
			date_of_birth: "16/10/1995", 
			profession: "Desenvolvedor Backend", 
			profile_description: "Excelentes capacidades de análise, escrita, raciocínio e de tecnologia da informação", 
			experience: "Experiencia em analise da dados na empresa Partyou", 
			formation: "UFABC - Engenharia da Computacao", 
			courses: "Udemy - Analise de dados" 
		)}

		it 'must be valid' do
			expect(candidate).to be_valid 	
		end
	end

	context "#date_of_birth cannot be in future" do
		let(:candidate) { build(:candidate, date_of_birth: Date.today + 1)}

		it 'and can not be valid' do
			expect(candidate).to_not be_valid 	
		end
	end

	context "#profile_description can not be bigger than 2000 caracters" do
		let(:candidate) { build(:candidate, profile_description: SecureRandom.base64(3000))}

		it 'and can not be valid' do
			expect(candidate).to_not be_valid 	
		end
	end

	context "#can not be blank" do
	
		context "#full_name" do 
			let(:candidate) { build(:candidate, full_name: "")}

			it 'and can not be valid' do
				expect(candidate).to_not be_valid 	
			end
		end

		context "#social_name" do 
			let(:candidate) { build(:candidate, social_name: "")}

			it 'and can not be valid' do
				expect(candidate).to_not be_valid 	
			end
		end

		context "#date_of_birth" do 
			let(:candidate) { build(:candidate, date_of_birth: "")}

			it 'and can not be valid' do
				expect(candidate).to_not be_valid 	
			end
		end

		context "#profession" do 
			let(:candidate) { build(:candidate, profession: "")}

			it 'and can not be valid' do
				expect(candidate).to_not be_valid 	
			end
		end

		context "#profile_description" do 
			let(:candidate) { build(:candidate, profile_description: "")}

			it 'and can not be valid' do
				expect(candidate).to_not be_valid 	
			end
		end

		context "#formation" do 
			let(:candidate) { build(:candidate, formation: "")}

			it 'and can not be valid' do
				expect(candidate).to_not be_valid 	
			end
		end
	end
end
