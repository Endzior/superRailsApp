class AddRedactorToUsers < ActiveRecord::Migration
  def change
    add_column :users, :redactor, :boolean, :default => false
  end
end
