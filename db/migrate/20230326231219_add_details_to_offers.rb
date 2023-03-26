class AddDetailsToOffers < ActiveRecord::Migration[7.0]
  def change
    add_column :offers, :job_title, :string
    add_column :offers, :start_date, :date
    add_column :offers, :end_date, :date
    add_column :offers, :status, :boolean
    add_column :offers, :salary, :integer
    add_column :offers, :description, :string
    add_reference :offers, :user, null: false, foreign_key: true
  end
end
