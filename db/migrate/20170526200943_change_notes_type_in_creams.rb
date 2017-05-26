class ChangeNotesTypeInCreams < ActiveRecord::Migration[5.0]
  def change
    change_column :creams, :notes, :text
  end
end
