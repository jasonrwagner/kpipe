class AddExcerptToService < ActiveRecord::Migration
  def change
    add_column :services, :excerpt, :text
  end
end
