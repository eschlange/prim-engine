class AddFirstNameColToParticipants < ActiveRecord::Migration
  def change
    add_column :participants, :first_name, :string
  end
end
