class AddProductCreator < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :creator_id, :integer
  end
end
