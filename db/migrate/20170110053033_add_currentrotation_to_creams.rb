class AddCurrentrotationToCreams < ActiveRecord::Migration[5.0]
  def change
    add_column :creams, :current_rotation, :boolean, default: false
  end
end
