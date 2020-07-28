class CreateInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :infos do |t|
      t.integer :age
      t.integer :user_id

      t.timestamps
    end
  end
end
