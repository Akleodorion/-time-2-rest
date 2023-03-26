class AddDetailsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :picture_url, :string, default: 'app/assets/images/base_picture.png'
    add_column :users, :age, :integer
  end
end
