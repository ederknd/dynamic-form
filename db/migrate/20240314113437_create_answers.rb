class CreateAnswers < ActiveRecord::Migration[7.1]
  def change
    create_table :answers do |t|
      t.string :entryable_type
      t.string :entryable_id
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
