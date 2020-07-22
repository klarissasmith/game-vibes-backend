class RemoveAnotherColumnFromReviews < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :genre, :string
  end
end
