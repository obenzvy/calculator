class Card < ActiveRecord::Base
  attr_accessible :general_rate, :issuer_id, :name, :rewards_type, :threshold_amount, :threshold_rate

  belongs_to :issuer
  has_many :rewards

  	def annual_spend amount
  		amount * 12
  	end

	def general_rewards amount
		if annual_spend(amount) <= self.threshold_amount
			annual_spend(amount) * self.threshold_rate
		else
			(self.threshold_rate * self.threshold_amount) + ((annual_spend(amount) - self.threshold_amount) * self.general_rate) 
	 	end
	 end 


end
