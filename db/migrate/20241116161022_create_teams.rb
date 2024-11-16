class CreateTeams < ActiveRecord::Migration[8.0]
  def change
    create_table :teams do |t|
      t.string :name, null: false
      t.references :owner, null: false, foreign_key: { to_table: :users }
      t.timestamps
    end

    create_table :user_teams do |t|
      t.references :user, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true
      t.timestamps
    end
  end
end
