class CreateAgendas < ActiveRecord::Migration[6.1]
  def change
    create_table :agendas do |t|
      t.integer :category_id
      t.string :task_name
      t.string :task_description
      t.datetime :deadline
      t.string :status

      t.timestamps
    end
  end
end
