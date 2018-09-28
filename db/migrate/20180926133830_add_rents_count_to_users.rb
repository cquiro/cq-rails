class AddRentsCountToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :rents_count, :integer, default: 0, null: false

    reversible do |dir|
      dir.up { data }
    end
  end

  def data
    ids = Set.new

    Rent.find_each { |r| ids << r.user_id }

    ids.each do |user_id|
      User.reset_counters(user_id, :rents)
    end
  end
end
