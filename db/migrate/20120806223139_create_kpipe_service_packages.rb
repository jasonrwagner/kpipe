class CreateKpipeServicePackages < ActiveRecord::Migration
  def change
    create_table :kpipe_service_packages do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
