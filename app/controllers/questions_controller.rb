class QuestionsController < ApplicationController

	before_action :set_question, only: [:show, :destroy, :post_an_answer]

	def create
		@question = @user.questions.create(content: params[:content])
	end

	def show
		@type = 'answer'
	end

	def destroy
		@question.destroy
	end

	def post_an_answer		
		@answer = @question.answers.create(user_id: @user.id, content: params[:content])
	end

	def destroy_an_answer		
		@answer = Answer.find(params[:answer_id]).destroy
		@question = @answer
		render :destroy
	end

	def refresh_feeds
		if params[:type]!='question'
			@type = 'answer'
			@question = Question.find(params[:type])
		else
			@type = params[:type]
		end
	end

	private

	def set_question
		@question = Question.find(params[:question_id])
	end

end