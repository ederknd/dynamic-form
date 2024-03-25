class CreateInputTexts < ActiveRecord::Migration[7.1]
  def change
    create_table :input_texts do |t|
      t.string :content

      t.timestamps
    end
  end
end
