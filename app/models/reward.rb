class Reward < ActiveRecord::Base
  attr_accessible :card_id, :end_period, :name, :reward_limit, :reward_rate, :start_period

  belongs_to :card


 def start
	self.start_period.month.to_i - 1 	
 end

 def reward_window
 	self.end_period.month.to_i - self.start_period.month.to_i + 1 
 end

 def threshold_check amount
 	if reward_window * amount > self.reward_limit
 		self.reward_limit * reward_rate
 	else 
		reward_window * amount * reward_rate
 	end
 end

end
