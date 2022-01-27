require 'rails_helper'

describe 'Question Validation' do

	before(:each) do
		user = User.new(email: 'abc@gmail.com', password: 'qwerty')
		@question = Question.new(content: 'some desciption', user: user)
	end

	it "is valid with valid attributes" do
		expect(@question).to be_valid
	end

	it "is invalid without a content" do
		@question.content = nil
		expect(@question).to be_invalid
	end

	it "is invalid without a user" do
		@question.user = nil
		expect(@question).to be_invalid
	end

end
