class AddNoBuyToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :no_buy, :date
  end
end
