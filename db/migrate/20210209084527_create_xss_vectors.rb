class CreateXSSVectors < ActiveRecord::Migration[6.0]
  def change
    create_table :xss_vectors do |t|
      t.string :vector

      t.timestamps
    end
  end
end
