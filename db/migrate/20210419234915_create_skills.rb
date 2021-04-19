class CreateSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :skills do |t|
      t.string :skill_name_1
      t.string :skill_name_2
      t.string :skill_name_3
      t.string :skill_name_4

      t.timestamps
    end
  end
end
