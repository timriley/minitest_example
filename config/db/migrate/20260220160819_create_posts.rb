# frozen_string_literal: true

ROM::SQL.migration do
  # Add your migration here.
  #
  # See https://guides.hanamirb.org/v2.3/database/migrations/ for details.
  change do
    create_table :posts do
      primary_key :id
      column :title, String, null: false
      column :published_at, DateTime, null: false
    end
  end
end
