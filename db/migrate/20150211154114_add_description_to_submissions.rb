class AddDescriptionToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :description, :string
  end
end
