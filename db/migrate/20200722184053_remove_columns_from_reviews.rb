class RemoveColumnsFromReviews < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :game_id, :bigint
    remove_column :reviews, :user_id, :bigint
  end
end
