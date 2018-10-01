class AddRentsCountToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :rents_count, :integer, default: 0, null: false

    reversible do |dir|
      dir.up { reset_users_rents_counter }
    end
  end

  def reset_users_rents_counter
    ids = Rent.all.map(&:user_id)

    ids.each do |user_id|
      User.reset_counters(user_id, :rents)
    end
  end
end
