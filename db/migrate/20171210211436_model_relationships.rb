class ModelRelationships < ActiveRecord::Migration[5.1]
  def change
    create_table :groups_samples, id: false do |t|
      t.belongs_to :sample, index: true
      t.belongs_to :group, index: true
    end


    change_table :groups do |t|
      t.belongs_to :collection
    end
  end
end
