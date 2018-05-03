class CreateJoinTableEventUser < ActiveRecord::Migration[5.2]
  def change
    create_join_table :events, :users do |t|
      # t.index [:attendee_id, :event_id]
    end
  end
end
