class AddClubDetailsToClub < ActiveRecord::Migration[5.1]
  def change
    add_column :clubs, :about, :text
    add_column :clubs, :objective, :text
    add_column :clubs, :member_benefit, :text
    add_column :clubs, :community_benefit, :text
    add_column :clubs, :usual_day, :string
    add_column :clubs, :usual_time, :time
    add_column :clubs, :usual_venue, :string
  end
end
