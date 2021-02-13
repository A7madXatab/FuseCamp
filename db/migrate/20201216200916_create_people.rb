class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.text :job_title, null: true

      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :company, null: true, foreign_key: true
      t.belongs_to :project, null: true, foreign_key: true
      t.belongs_to :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
