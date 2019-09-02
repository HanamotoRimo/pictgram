class AddDescriptionToComment < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :description, :string
  end
end
