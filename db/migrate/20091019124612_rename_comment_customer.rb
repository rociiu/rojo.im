class RenameCommentCustomer < ActiveRecord::Migration
  def self.up
    rename_column :comments, :customer, :name
  end

  def self.down
    rename_column :comments,  :name, :customer
  end
end
