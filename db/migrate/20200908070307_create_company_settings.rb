# frozen_string_literal: true

# Company-settings Migration
class CreateCompanySettings < ActiveRecord::Migration[6.0]
  def change
    create_table :company_settings do |t|
      t.integer :company_id, null: false, index: true
      t.string :time_zone
      t.integer :leaves, null: false, default: 0
      t.timestamps
    end
  end
end
