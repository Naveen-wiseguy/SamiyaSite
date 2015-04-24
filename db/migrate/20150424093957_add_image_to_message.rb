class AddImageToMessage < ActiveRecord::Migration
  def change
    add_column :messages, :image_uid, :string
    add_column :messages, :image_present, :boolean
  end
end
