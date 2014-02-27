class CreateProficiencies < ActiveRecord::Migration
  def change
    create_table :proficiencies do |column|
      column.integer :user_id
      column.integer :skill_id
      column.integer :years
      column.boolean :formal #http://makandracards.com/makandra/607-automagical-methods-for-boolean-attributes-in-activerecord

      column.timestamps
    end
  end
end
