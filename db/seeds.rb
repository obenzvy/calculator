if Rails.env.development?
    
  Card.destroy_all
  Issuer.destroy_all
  Reward.destroy_all
  

  Issuer.create [{:name => "Discover"},
  				{:name => "Capital One"}]

  Card.create [
  	{:issuer_id => 8, :name => "More", :general_rate => 0.01, :rewards_type => "cash", :threshold_amount => 3000, :threshold_rate => 0.0025},
  	{:issuer_id => 9, :name => "Cash", :general_rate => 0.015, :rewards_type => "cash", :threshold_amount => 0, :threshold_rate => 0}
  ]

end