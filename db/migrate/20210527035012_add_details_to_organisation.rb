class AddDetailsToOrganisation < ActiveRecord::Migration[6.1]
  def change
    add_column :organisations, :name, :string
    add_column :organisations, :type, :string
    add_column :organisations, :description, :string
    add_column :organisations, :image, :string
    add_column :organisations, :phone, :integer
    add_column :organisations, :launch_provider, :boolean
  end
end
