# frozen_string_literal: true

ROM::SQL.migration do
  change do
    create_table :sounds do
      primary_key :id
      column :filename, String, null: false
      column :path, String, null: false
      column :extenstion, String, null: false
    end
  end
end
