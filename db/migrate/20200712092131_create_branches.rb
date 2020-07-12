class CreateBranches < ActiveRecord::Migration[6.0]
  def change
    create_table :branches do |t|
      t.integer :number, null: false
      t.string :kanji_name, null: false
      t.string :kana_name
      t.references :bank, foreign_key: true

      t.timestamps
    end
  end
end
