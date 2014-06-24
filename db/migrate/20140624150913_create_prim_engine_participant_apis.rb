class CreatePrimEngineParticipantApis < ActiveRecord::Migration
  def change
    create_table :prim_engine_api_participants do |t|
      t.string :email
      t.string :last_name
      t.date :date_of_birth
      t.string :phone

      t.timestamps
    end
  end
end
