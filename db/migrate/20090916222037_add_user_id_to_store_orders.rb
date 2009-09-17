class AddUserIdToStoreOrders < ActiveRecord::Migration
  def self.up
    add_column :store_orders, :user_id, :integer
  end

  def self.down
    remove_column :store_orders, :user_id
  end
end
