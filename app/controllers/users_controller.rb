class UsersController < ApplicationController

	def homepage
		# @amount = params[:amount].to_f
		# @cards = Card.all
		# @general_amount = Card.monthly_array(params[:amount])

		@general_amount = params[:amount].to_i

		# @general_rewards = Card.all
		# @general_rewards = Card.reward_amount(@general_amount)
		# @sum = Card.reward_rate(@general_amount.map { |dolla| dolla.to_i })
	end

	def homepage_rewards
		@categories = Reward.all
		@cards = Card.all

		@general_spend = params[:general_spend].to_i 
		@gas = params[:gas].to_i 
		@movies = params[:movies].to_i
		@museums = params[:museums].to_i 
		@theme_parks = params[:theme_parks].to_i 
		@restaurants = params[:restaurants].to_i 
		@department_stores = params[:department_stores].to_i 

		@sum = @cards.first.rewards.first


	end
end


