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

		@gas = params[:gas].to_i 
		@movies = params[:movies].to_i
		@museums = params[:museums].to_i 
		@theme_parks = params[:theme_parks].to_i 
		@restaurants = params[:restaurants].to_i 
		@department_stores = params[:department_stores].to_i 

		@cards.each do |card|
			card.name
			card.rewards.each do |category|
				if category.name.downcase == "gas" 
					@gas_rewards = category.threshold_check(@gas)
				elsif category.name.downcase == "movies"
					@movie_rewards = category.threshold_check(@movies)
				elsif category.name.downcase == "museums"
					@museum_rewards = category.threshold_check(@museums)
				elsif category.name.downcase == "theme parks"
					@theme_park_rewards = category.threshold_check(@theme_parks)
				elsif category.name.downcase == "restaurants"
					@restaurant_rewards = category.threshold_check(@restaurants)
				elsif category.name.downcase == "department stores"
					@department_store_rewards = category.threshold_check(@department_stores)
				end
				# @sum = @gas_rewards.to_i + @movie_rewards.to_i
			end
		end

		@sum = @cards.first.reward_check(params[:gas].to_i)


	end
end