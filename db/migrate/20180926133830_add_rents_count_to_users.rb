class AddRentsCountToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :rents_count, :integer, default: 0, null: false

    reversible do |dir|
      dir.up { data }
    end
  end

  def data
    execute <<-SQL.squish
      UPDATE users
      SET rents_count = (SELECT count(*)
                         FROM rents
                         WHERE rents.user_id = users.id)
    SQL
  end
end
