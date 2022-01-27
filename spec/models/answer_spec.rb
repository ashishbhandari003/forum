require 'rails_helper'

RSpec.describe 'Answer', type: :model do

	before(:each) do
		user = User.new(email: 'abc@gmail.com', password: 'qwerty')
		question = Question.new(content: 'some desciption', user: user)
		@answer = Answer.new(content: 'another desciption', user: user, question: question)
	end

	it "is valid with valid attributes" do
		expect(@answer).to be_valid
	end

	it "is invalid without an content" do
		@answer.content = nil
		expect(@answer).to be_invalid
	end

	it "is invalid without a user" do
		@answer.user = nil
		expect(@answer).to be_invalid
	end

	it "is invalid without a question" do
		@answer.question = nil
		expect(@answer).to be_invalid
	end
	
end