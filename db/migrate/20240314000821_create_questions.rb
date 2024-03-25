class CreateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.string :label
      t.string :type
      t.string :input_type
      t.references :form, null: false, foreign_key: true

      t.timestamps
    end
  end
end
