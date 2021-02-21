class CreateAccountAdministrators < ActiveRecord::Migration[6.1]
  def change
    create_table :account_administratorships do |t|
      t.belongs_to :account, null: false, foreign_key: true
      t.belongs_to :person, null: false, foreign_key: true

      t.timestamps
    end

    add_index :account_administratorships, %i[account_id person_id], unique: true
  end
end
