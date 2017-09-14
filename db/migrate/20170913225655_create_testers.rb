class CreateTesters < ActiveRecord::Migration[5.1]
  def change
    create_table :testers do |t|
      t.jsonb :log

      t.timestamps
    end
  end
end
