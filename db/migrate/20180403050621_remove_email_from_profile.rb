class RemoveEmailFromProfile < ActiveRecord::Migration[5.1]
  def change
    remove_column :profiles, :email, :string
  end
end
