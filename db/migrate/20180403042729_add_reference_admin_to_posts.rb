class AddReferenceAdminToPosts < ActiveRecord::Migration[5.1]
  def change
    add_reference :posts, :admin, foreign_key: true
  end
end
