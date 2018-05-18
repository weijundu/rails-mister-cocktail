class RemoveUrlFromCocktails < ActiveRecord::Migration[5.1]
  def change
    remove_column :cocktails, :url, :string
  end
end
