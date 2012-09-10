class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.string :name
      t.integer :card_id
      t.date :start_period
      t.date :end_period
      t.float :reward_rate
      t.integer :reward_limit

      t.timestamps
    end
  end
end
