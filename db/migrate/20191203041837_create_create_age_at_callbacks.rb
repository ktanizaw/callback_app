class CreateCreateAgeAtCallbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :create_age_at_callbacks do |t|

      t.timestamps
    end
  end
end
