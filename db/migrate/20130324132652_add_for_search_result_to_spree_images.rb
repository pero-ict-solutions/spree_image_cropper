class AddForSearchResultToSpreeImages < ActiveRecord::Migration
  def change
    add_column :spree_assets, :search_result_asset, :boolean, :default => false
  end
end
